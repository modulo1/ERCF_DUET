if !exists(global.pulse_count)
 	elsif 
		global pulse_count = 0
if !exists(global.selector_loaded)
	elsif
		global selector_loaded = 0
if !exists(global.selector_engaged)
	elsif
		global selector_engaged = 0
if !exists(global.bowden_length)
	elsif
		global bowden_length = 1010 ; distance until the filaent is at the end
if !exists(global.extruder_load_length)
	elsif
		global extruder_load_length = 43

; wait for 3.5
;global selector_array = {0,22,43,69.2,90.7,112}
;;; original values, as reference
;global selector_0 = 0
;global selector_1 = 21
;global selector_2 = 42
;global selector_3 = 68
;global selector_4 = 89
;global selector_5 = 110

if !exists(global.selector_0)
	elsif
		global selector_0 = 0
if !exists(global.selector_1)
	elsif
		global selector_1 = 22
if !exists(global.selector_2)
	elsif
		global selector_2 = 43
if !exists(global.selector_3)
	elsif
		global selector_3 = 69.2
if !exists(global.selector_4)
	elsif
		global selector_4 = 90.7
if !exists(global.selector_5)
	elsif
		global selector_5 = 112
if !exists(global.selector_offset)
	elsif
		global selector_offset = 2.0
