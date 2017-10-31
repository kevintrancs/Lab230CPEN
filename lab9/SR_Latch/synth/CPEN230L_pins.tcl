# CPEN 230L DE2-115 board pin assignments, I/O standards, current
# strengths, and slew rates.  Copy only those lines needed for
# your project to a separate file.  Rick Nungester 3/17/16.
#
# Use the provided vector names only if your project requires a single
# range of 2 or more, such as SW[1:0] or SW[17:0] or SW[11:4].  Multiple
# ranges (e.g. SW[11:8] and SW[3:0]) or individual switches (e.g. SW[0])
# should be renamed as individual signals instead of vectors.  For
# example, if your project only uses SW[0] rename it SW0.  If using
# switches 3, 1, and 0 rename them SW3, SW1, and SW0.  (SW3 and SW[1:0]
# would also work in this case.)  This renaming is because some Quartus
# tools will give warnings or errors for single-element vectors or
# discontinuous vector ranges.

set_location_assignment PIN_Y23 -to SW[17]
set_location_assignment PIN_Y24 -to SW[16]
set_location_assignment PIN_AA22 -to SW[15]
set_location_assignment PIN_AA23 -to SW[14]
set_location_assignment PIN_AA24 -to SW[13]
set_location_assignment PIN_AB23 -to SW[12]
set_location_assignment PIN_AB24 -to SW[11]
set_location_assignment PIN_AC24 -to SW[10]
set_location_assignment PIN_AB25 -to SW[9]
set_location_assignment PIN_AC25 -to SW[8]
set_location_assignment PIN_AB26 -to SW[7]
set_location_assignment PIN_AD26 -to SW[6]
set_location_assignment PIN_AC26 -to SW[5]
set_location_assignment PIN_AB27 -to SW[4]
set_location_assignment PIN_AD27 -to SW[3]
set_location_assignment PIN_AC27 -to SW[2]
set_location_assignment PIN_AC28 -to SW[1]
set_location_assignment PIN_AB28 -to SW[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to SW

set_location_assignment PIN_R24 -to KEY[3]
set_location_assignment PIN_N21 -to KEY[2]
set_location_assignment PIN_M21 -to KEY[1]
set_location_assignment PIN_M23 -to KEY[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to KEY

set_location_assignment PIN_H15 -to LEDR[17]
set_location_assignment PIN_G16 -to LEDR[16]
set_location_assignment PIN_G15 -to LEDR[15]
set_location_assignment PIN_F15 -to LEDR[14]
set_location_assignment PIN_H17 -to LEDR[13]
set_location_assignment PIN_J16 -to LEDR[12]
set_location_assignment PIN_H16 -to LEDR[11]
set_location_assignment PIN_J15 -to LEDR[10]
set_location_assignment PIN_G17 -to LEDR[9]
set_location_assignment PIN_J17 -to LEDR[8]
set_location_assignment PIN_H19 -to LEDR[7]
set_location_assignment PIN_J19 -to LEDR[6]
set_location_assignment PIN_E18 -to LEDR[5]
set_location_assignment PIN_F18 -to LEDR[4]
set_location_assignment PIN_F21 -to LEDR[3]
set_location_assignment PIN_E19 -to LEDR[2]
set_location_assignment PIN_F19 -to LEDR[1]
set_location_assignment PIN_G19 -to LEDR[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LEDR
set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to LEDR
set_instance_assignment -name SLEW_RATE 2 -to LEDR

set_location_assignment PIN_G21 -to LEDG[7]
set_location_assignment PIN_G22 -to LEDG[6]
set_location_assignment PIN_G20 -to LEDG[5]
set_location_assignment PIN_H21 -to LEDG[4]
set_location_assignment PIN_E24 -to LEDG[3]
set_location_assignment PIN_E25 -to LEDG[2]
set_location_assignment PIN_E22 -to LEDG[1]
set_location_assignment PIN_E21 -to LEDG[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LEDG
set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to LEDG
set_instance_assignment -name SLEW_RATE 2 -to LEDG

set_location_assignment PIN_Y2 -to CLOCK_50
set_instance_assignment -name IO_STANDARD "2.5 V" -to CLOCK_50

set_location_assignment PIN_AA14 -to HEX7[6]
set_location_assignment PIN_AG18 -to HEX7[5]
set_location_assignment PIN_AF17 -to HEX7[4]
set_location_assignment PIN_AH17 -to HEX7[3]
set_location_assignment PIN_AG17 -to HEX7[2]
set_location_assignment PIN_AE17 -to HEX7[1]
set_location_assignment PIN_AD17 -to HEX7[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX7
set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to HEX7
set_instance_assignment -name SLEW_RATE 2 -to HEX7

set_location_assignment PIN_AC17 -to HEX6[6]
set_location_assignment PIN_AA15 -to HEX6[5]
set_location_assignment PIN_AB15 -to HEX6[4]
set_location_assignment PIN_AB17 -to HEX6[3]
set_location_assignment PIN_AA16 -to HEX6[2]
set_location_assignment PIN_AB16 -to HEX6[1]
set_location_assignment PIN_AA17 -to HEX6[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX6
set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to HEX6
set_instance_assignment -name SLEW_RATE 2 -to HEX6

set_location_assignment PIN_AH18 -to HEX5[6]
set_location_assignment PIN_AF18 -to HEX5[5]
set_location_assignment PIN_AG19 -to HEX5[4]
set_location_assignment PIN_AH19 -to HEX5[3]
set_location_assignment PIN_AB18 -to HEX5[2]
set_location_assignment PIN_AC18 -to HEX5[1]
set_location_assignment PIN_AD18 -to HEX5[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5
set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to HEX5
set_instance_assignment -name SLEW_RATE 2 -to HEX5

set_location_assignment PIN_AE18 -to HEX4[6]
set_location_assignment PIN_AF19 -to HEX4[5]
set_location_assignment PIN_AE19 -to HEX4[4]
set_location_assignment PIN_AH21 -to HEX4[3]
set_location_assignment PIN_AG21 -to HEX4[2]
set_location_assignment PIN_AA19 -to HEX4[1]
set_location_assignment PIN_AB19 -to HEX4[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4
set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to HEX4
set_instance_assignment -name SLEW_RATE 2 -to HEX4

set_location_assignment PIN_Y19 -to HEX3[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[6]
set_location_assignment PIN_AF23 -to HEX3[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[5]
set_location_assignment PIN_AD24 -to HEX3[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[4]
set_location_assignment PIN_AA21 -to HEX3[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[3]
set_location_assignment PIN_AB20 -to HEX3[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[2]
set_location_assignment PIN_U21 -to HEX3[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to HEX3[1]
set_location_assignment PIN_V21 -to HEX3[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to HEX3[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to HEX3
set_instance_assignment -name SLEW_RATE 2 -to HEX3

set_location_assignment PIN_W28 -to HEX2[6]
set_location_assignment PIN_W27 -to HEX2[5]
set_location_assignment PIN_Y26 -to HEX2[4]
set_location_assignment PIN_W26 -to HEX2[3]
set_location_assignment PIN_Y25 -to HEX2[2]
set_location_assignment PIN_AA26 -to HEX2[1]
set_location_assignment PIN_AA25 -to HEX2[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to HEX2
set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to HEX2
set_instance_assignment -name SLEW_RATE 2 -to HEX2

set_location_assignment PIN_U24 -to HEX1[6]
set_location_assignment PIN_U23 -to HEX1[5]
set_location_assignment PIN_W25 -to HEX1[4]
set_location_assignment PIN_W22 -to HEX1[3]
set_location_assignment PIN_W21 -to HEX1[2]
set_location_assignment PIN_Y22 -to HEX1[1]
set_location_assignment PIN_M24 -to HEX1[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to HEX1
set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to HEX1
set_instance_assignment -name SLEW_RATE 2 -to HEX1

set_location_assignment PIN_H22 -to HEX0[6]
set_location_assignment PIN_J22 -to HEX0[5]
set_location_assignment PIN_L25 -to HEX0[4]
set_location_assignment PIN_L26 -to HEX0[3]
set_location_assignment PIN_E17 -to HEX0[2]
set_location_assignment PIN_F22 -to HEX0[1]
set_location_assignment PIN_G18 -to HEX0[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to HEX0
set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to HEX0
set_instance_assignment -name SLEW_RATE 2 -to HEX0
