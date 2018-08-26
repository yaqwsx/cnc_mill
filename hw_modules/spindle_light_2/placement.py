#!/usr/bin/env python

from math import cos, sin, radians, pi
import pcbnew
import sys
from copy import deepcopy

def fromMm(mm):
    return 1000000 * mm

def copyPoint(p):
    print(p)
    x = pcbnew.wxPoint(0, 0)
    x.x = p.x
    x.y = p.y
    return x

def newTrack(board, start, end):
    t = pcbnew.TRACK(board)
    t.SetStart(start)
    t.SetEnd(end)
    t.SetLayer(pcbnew.F_Cu)
    board.Add(t)
    return t

def newVia(board, pos):
    t = pcbnew.VIA(board)
    t.SetPosition(pos)
    t.SetDrillDefault()
    t.SetWidth(fromMm(1))
    board.Add(t)
    return t

center = (fromMm(150), fromMm(100))

radius_led = fromMm(37.5)
radius_led_step = fromMm(3)
count = 99 / 3
step = 2 * pi / (count + 1)

filename = "spindle_light_2.kicad_pcb"

b = pcbnew.LoadBoard(filename)
m = b.GetModules()
nets = {}
while True:
    if not m:
        break
    ref = m.GetReference()
    if ref.startswith("D"):
        num = int(ref[1:]) - 1
        group = num / 3
        elem = num % 3

        r = radius_led + elem * radius_led_step
        angle = group * step + step
        orient = -(angle - pi / 2) * 1800 / pi
        if elem == 1:
            orient += 1800
        m.SetOrientation(orient)
        c = m.GetPosition()
        c.Set(int(center[0] + r * cos(angle)), int(center[1] + r * sin(angle)))
        m.SetPosition(c)

        print("Diode: " + str(num))
        print(group, elem)
        print(-(angle - pi / 2) * 1800 / pi)

        p = m.PadsList()
        while True:
            if not p:
                break
            id = p.GetNet().GetNet()
            y = nets.get(id, [])
            y.append(p.GetPosition())
            nets[id] = y
            p = p.Next()
    if ref.startswith("R"):
        group = int(ref[1:]) - 1
        r = radius_led
        angle = group * step + step
        orient = -(angle - pi / 2) * 1800 / pi
        m.SetOrientation(orient)
        c = m.GetPosition()
        c.Set(int(center[0] + r * cos(angle)), int(center[1] + r * sin(angle)))
        m.SetPosition(c)
    m = m.Next()

for net, points in nets.items():
    if len(points) == 1:
        t = newVia(b, points[0])
    if len(points) == 2:
        t = newTrack(b, points[0], points[1])
        t.SetWidth(fromMm(1))

b.Save(filename)

print("Done")