;; add M98 P"0:/sys/homev.g" to /sys/homeall.g


M564 H0 S1  ; allow movement before homing
if global.ercf_selector_loaded == 0
	G1 H1 V-150 F1000
	G1 V5
	G1 H1 V-10 F150
	G1 V{global.ercf_selector_offset}
	G92 V0
else
	echo "Error, retract filament from selector before homing"
