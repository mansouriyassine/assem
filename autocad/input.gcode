G21 ; Set units to millimeters
G90 ; Use absolute coordinates
G0 Z5 ; Lift the tool

; Move to the start position at the rightmost point of the circle
G0 X250 Y0

; Lower the tool to the drawing surface
G0 Z0

; Draw the circle in a clockwise direction
G2 X250 Y0 I-250 J0

; Lift the tool
G0 Z5

M2 ; End program