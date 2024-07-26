import ezdxf
import re

def parse_gcode(filename):
    with open(filename, 'r') as file:
        lines = file.readlines()
    
    paths = []
    current_path = []
    for line in lines:
        if line.startswith('G0') or line.startswith('G1'):
            match = re.search(r'X([-\d.]+)\s*Y([-\d.]+)', line)
            if match:
                x, y = map(float, match.groups())
                current_path.append((x, y))
        elif line.startswith('G0 Z') and current_path:
            paths.append(current_path)
            current_path = []
    
    if current_path:
        paths.append(current_path)
    
    return paths

def create_dxf(paths, output_filename):
    doc = ezdxf.new('R2010')
    msp = doc.modelspace()
    
    for path in paths:
        msp.add_lwpolyline(path)
    
    doc.saveas(output_filename)

# Usage
gcode_file = 'input.gcode'
dxf_file = 'output.dxf'

paths = parse_gcode(gcode_file)
create_dxf(paths, dxf_file)

print(f"Conversion terminée. Fichier DXF créé : {dxf_file}")