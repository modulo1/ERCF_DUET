
;; global declarations for ERCF
;; some defaults established
;; and variables set and loaded

if !exists(global.ercf_settings_loaded)
	;=== configuration - general settings ===;
	global ercf_bowden_length = 630                              ;; distance until the filaent is at the end
	global ercf_extruder_load_length = 50                        ;; Orbiter 2.0 on EVA3 with E3D Revo Voron hotend
	;=== configuration - blinky pulse count ===;
	global ercf_pulse_count = 0
	global ercf_last_count = 0
	;=== configuration - selector ===;
	global ercf_selector_loaded = 0
	global ercf_selector_engaged = 0	
    ;global ercf_selector_array = {0,22,43,69.2,90.7,112,112,112}
	global ercf_selector_0 = 0
	global ercf_selector_1 = 11
	global ercf_selector_2 = 22
	global ercf_selector_3 = 35
	global ercf_selector_4 = 45.2
	global ercf_selector_5 = 110
	global ercf_selector_6 = 110
	global ercf_selector_7 = 110
	global ercf_selector_offset = 1.000
