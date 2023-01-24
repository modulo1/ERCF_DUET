;M712 Unload filament from selector and confirm

set global.ercf_pulse_count = 0
var ercf_last_count = global.ercf_pulse_count
var ercf_initial_unload = false

;engage servo
;M280 P10 S90
M715 S1

;disassociate the monitor
M591 D1 S0 P0

; set trigger
M950 J2 C"124.io1.in"
M581 T9 P2

M400

while true
	if global.ercf_selector_loaded == 1
		set var.ercf_last_count = global.ercf_pulse_count
		G1 E0:-5 ; we have movement
		M400
		if var.ercf_last_count == global.ercf_pulse_count
			M118 S"Unload Finished - first pass" L2
			set var.ercf_initial_unload = true
			break
		if iterations = 20
			M118 S"Unload Failed - first pass" L1
			set var.ercf_initial_unload = false
			M25
			break
	else
		M118 S"Unload already done" L1
		break

if var.ercf_initial_unload == true
	set global.ercf_pulse_count = 0
	set var.ercf_last_count = 0
	M400
	
	while true
		set var.ercf_last_count = global.ercf_pulse_count
		G1 E0:2
		M400
		if var.ercf_last_count != global.ercf_pulse_count
			G1 E0:-20
			M400
			set global.ercf_selector_loaded = 0
			break
		if iterations = 20
			M118 S"Unload Failed - second pass" L1
			M25
			break

;unset trigger
M581 T9 P-1
M950 J2 C"nil"

;set filament monitor
M591 D1 P7 C"^124.io1.in" S1 A1 L1.331

;Disengage servo
;M280 P10 S0
M715 S0

M400
