if !exists(global.ercf_pulse_count)
 	elsif 
		global ercf_pulse_count = 0
if !exists(global.ercf_last_count)
 	elsif 
		global ercf_last_count = 0
if !exists(global.ercf_selector_loaded)
	elsif
		global ercf_selector_loaded = 0
if !exists(global.ercf_selector_engaged)
	elsif
		global ercf_selector_engaged = 0
if !exists(global.ercf_bowden_length)
	elsif
		global ercf_bowden_length = 1010 ; distance until the filaent is at the end
if !exists(global.ercf_extruder_load_length)
	elsif
		global ercf_extruder_load_length = 43

; wait for 3.5
;global ercf_selector_array = {0,22,43,69.2,90.7,112}
;;; original values, as reference
;global ercf_selector_0 = 0
;global ercf_selector_1 = 21
;global ercf_selector_2 = 42
;global ercf_selector_3 = 68
;global ercf_selector_4 = 89
;global ercf_selector_5 = 110

if !exists(global.ercf_selector_0)
	elsif
		global ercf_selector_0 = 0
if !exists(global.ercf_selector_1)
	elsif
		global ercf_selector_1 = 22
if !exists(global.ercf_selector_2)
	elsif
		global ercf_selector_2 = 43
if !exists(global.ercf_selector_3)
	elsif
		global ercf_selector_3 = 69.2
if !exists(global.ercf_selector_4)
	elsif
		global ercf_selector_4 = 90.7
if !exists(global.ercf_selector_5)
	elsif
		global ercf_selector_5 = 112
if !exists(global.ercf_selector_offset)
	elsif
		global ercf_selector_offset = 2.0
