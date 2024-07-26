G21 ; Set units to millimeters
G90 ; Use absolute coordinates
G0 Z5 ; Lift the tool

; Draw Square
G0 X0 Y0 ; Move to start position
G0 Z0 ; Lower the tool to drawing surface
G1 X500 Y0 F1000 ; Draw bottom line
G1 X500 Y500 ; Draw right line
G1 X0 Y500 ; Draw top line
G1 X0 Y0 ; Draw left line (return to start)

; Draw Circle
G0 X250 Y250 ; Move to circle center
G0 Z0 ; Ensure tool is at drawing surface
G3 X250 Y250 I250 J0 F1000 ; Draw full circle (counterclockwise)

G0 Z5 ; Lift the tool
M2 ; End program