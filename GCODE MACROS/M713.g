;M711.g Load extruder
;Ensure selector is loaded (if false run check) todo

;Advance Extruder 1 1010mm
;Advance Both Extruder 0 and 1 43mm

;Disengage servo

;Advance Extruder 0 5mm

M715 S1																	;engage the servo
M400
G1 E{-global.ercf_extruder_load_length, -global.ercf_extruder_load_length} F2000	;move both extruders in tandem to load
M400
G1 E{0, -global.ercf_bowden_length} F3000									;feed filament to the end of the bowden
M400
M715 S0	
