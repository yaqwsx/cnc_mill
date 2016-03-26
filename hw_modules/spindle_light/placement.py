from math import cos, sin, radians, pi
from kicad.pcbnew.board import Board


# execfile("D:\\Users\\email\\Documents\\Projekty\\cnc_mill\\hw_modules\\spindle_light\\placement.py")

# PARAMETERS
center = (148, 105)
radius1 = 37.5
radius2 = 42
step = 360 / (4 * 10) / 180.0 * pi

b = Board.from_editor()


for m in b.modules:
	ref = m.native_obj.GetReference()
	if ref[0] == 'D':
		num = int(ref[1:])
		part  = (num - 1) % 6
		group = (num - 1) / 6

		if part == 0 or part == 1:
			column = 0
		if part == 5 or part == 2:
			column = 1
		if part == 4 or part == 3:
			column = 2

		angle = (4 * group + column + 1) * step
		radius = radius1 if part in [1, 2, 3] else radius2
		rot = pi if part >= 3 else 0

		m.x = center[0] + radius * cos(angle)
		m.y = center[1] + radius * sin(angle)
		m.rotation = 3 * pi / 2. - angle + rot

		#m.native_obj.SetPosition(wx.Point(m.x, m.y))

		#print("Diode: " + str(num))
		print("({0}, {1})".format(m.x, m.y))
		
	elif ref[0] == 'R':
		num = int(ref[1:])
		group = (num - 1) / 2
		second = (num - 1) % 2

		angle = (4 * group + (4 if num % 2 == 0 else 0)) * step
		radius = radius1 if second else radius2

		m.x = center[0] + radius * cos(angle)
		m.y = center[1] + radius * sin(angle)
		m.rotation = 3 * pi / 2. - angle + (pi if second == 1 else 0)

		print("Resistor: " + str(num))
    
b.save()

# put components on arc
#angle = end-start
#step = angle/float(len(comps)-1)

#for i, comp in enumerate(comps):
#    angle_i = start + step*i
#    comp.x = center[0] + radius * cos(angle_i)
#    comp.y = center[0] + radius * sin(angle_i)
#    comp.rotation = pi/2.-angle_i

print("Done")