# ERCF on DUET

This is mostly just a placeholder, with some quick notes. 

I've setup several macros to do various things with ERCF in a native way in DUET. You can copy the gcode files into the system folder on your Duet controlled machine, and update a few config.g settings in order to define the new drive. 

I've only configured to 6 filament blocks so far, but more could easily be added. 

GCODE MACROS:

```M700.g		- USAGE: "M700 S(0-5) Move selector to the numbered filament block (locations defined in init.g)```
	
```M705.g 		- USAGE: "M705" Check to see if filament is present in selector```
	
```M710.g 		- USAGE: "M710" Load filament only into selector and check (not to be confused with loading filament to extruder)```
	
```M711.g 		- USAGE: "M711" Load filament into extruder (Load selector first)```
	
```M712.g 		- USAGE: "M712" Unload filament out of selector and check (not to be confused with unloading filament from extruder)```
	
```M713.g		- USAGE: "M713" Unload filament out of extruder and back to selector. Must run M712 to fully remove the filament afterwards.```
	
```M715.g 		- USAGE: "M715 S(0|1)" Use S0 to disengage server and S1 to engage```
	
```M728.g 		- USAGE: "M728" Home selector and select the 0 filament block```
	
```init.g 		- USAGE: Define options for the ERCF (bowden length, selector positions, etc) add "M98 P"init.g" to your config.g to initialise the values```


This config.g is designed to add an ERCF to an existing configuration:

```
;; 124. is canned ERCF board
;; 121. is Toolboard 1LC
;; 0. is mainboard

;ERCF Drives
M569 P124.1 S0 D2 ; ERCF Selector - default address for canned board 
M569 P124.0 S0 D2 ; ERCF Drive - default address for canned board

; Set drive mapping
;; we're adding an additional extruder (124.0) and the selector axis (V124.1)
M584 E121.0:124.0 V124.1

;set motor currents (mA) and idle factor
M906 E1200:1000 V800 I30

; configure microstepping 
M350 E16:16 V16 I1

; set steps per mm
M92 E673.06:566.3 V80

; instantaneous speed change mm/sec
M205 E5.0:5.0 V5.0

; set maximum speed (mm/min)
M203 E7200:5000 V5000

;set accelerations
M201 E10000.0:250.0 V2800		

; modify tool to add second drive
M563 P0 D0:1 H1 F1 S"ERCFrevo" L0	; define tool 0

; set axis limits for V
M208 V0 S1 				; minima
M208 V115 S0 				; maxima

M574 V1 S1 P"124.io3.in" ; V endstop
M591 D1 P7 C"^124.io1.in" S1 A1 L1.331	; pulsed filament monitor in the ERCF 
M950 S10 C"124.io0.out" 		; ERCF servo

M98 P"0:/sys/ercf/init.g"		; pull in some variables we use for macros
					; there's also additional configuration (filament block locations for selector axis, etc.)
```
