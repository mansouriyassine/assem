G21 ; Set units to millimeters
G90 ; Use absolute coordinates
G0 Z5 ; Lift the tool
G0 X221.1697 Y203.0031 ; Move to start position
G0 Z0 ; Lower the tool to drawing surface
G1 X221.1697 Y153.0031 F1000 ; Draw first line
G1 X271.1697 Y153.0031 ; Draw second line
G1 X271.1697 Y203.0031 ; Draw third line
G1 X221.1697 Y203.0031 ; Draw fourth line (return to start)
G0 Z5 ; Lift the tool
M2 ; End program