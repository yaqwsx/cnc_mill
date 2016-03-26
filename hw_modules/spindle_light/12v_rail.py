from math import cos, sin, radians, pi
from kicad.pcbnew.board import Board


# execfile("D:\\Users\\email\\Documents\\Projekty\\cnc_mill\\hw_modules\\spindle_light\\12v_rail.py")

# PARAMETERS
center = (148, 105)
radius = 34.5
segments = 32

b = Board.from_editor()

coords = []
for i in range (0, segments):
	coords.append(
		(center[0] + radius * cos(i * 2 * pi / segments),
	     center[1] + radius * sin(i * 2 * pi / segments)))

b.add_track(coords)

    
b.save()
print("Done")