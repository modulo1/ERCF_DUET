;ERCF Drives
;; 124. is canned ERCF board
;; 121. is Toolboard 1LC
;; 0. is mainboard

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
M563 P0 D0:1 H1 F1 S"ERCFrevo" L0; define tool 0
G10 P0 R0 S0

M98 P"0:/sys/ercf/init.g"

;temporary tool assignment via selector axis
M563 P0 D0:1 H1 F1 L0                            ; define tool 0
G10 P0 R0 S0                                 ; set initial tool 0 active and standby temperatures to 0C

M563 P1 D0:1 H1 F1 L0                              ; define tool 1
G10 P1 R0 S0                                 ; set initial tool 1 active and standby temperatures to 0C

M563 P2 D0:1 H1 F1 L0                              ; define tool 2
G10 P2 R0 S0                                  ; set initial tool 2 active and standby temperatures to 0C

M563 P3 D0:1 H1 F1 L0                           ; define tool 3
G10 P3 R0 S0                                 ; set initial tool 3 active and standby temperatures to 0C

M563 P4 D0:1 H1 F1 L0                             ; define tool 4
G10 P4 R0 S0                                 ; set initial tool 4 active and standby temperatures to 0C

M563 P5 D0:1 H1 F1 L0                            ; define tool 5
G10 P5 R0 S0                                 ; set initial tool 5 active and standby temperatures to 0C

; set axis limits for V
M208 V0 S1 ; minima
M208 V115 S0 ;maxima

M574 V1 S1 P"124.io3.in" ; V endstop
M591 D1 P7 C"^124.io1.in" S1 A1 L1.331 ; pulsed filament monitor in the ERCF 
M950 S10 C"124.io0.out" ; ERCF servo

;M98 P"0:/sys/ercf/init.g"
