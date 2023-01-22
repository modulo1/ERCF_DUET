# ERCF on DUET

> This is mostly just a placeholder, with some quick notes. 

> I've setup several macros to do various things with ERCF in a native way in DUET. You can copy the gcode files into the system folder on your Duet controlled machine, and update a few config.g settings in order to define the new drive. 

> I've only configured to 6 filament blocks so far, but more could easily be added. 

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


See [config.g](sys/ercf/config.g) for an example configuration that will add an ERCF to an existing configuration.
