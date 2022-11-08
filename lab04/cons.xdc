# Switches for A and B numbers
set_property PACKAGE_PIN V17 [get_ports {A0}]
    set_property IOSTANDARD LVCMOS33 [get_ports {A0}]

set_property PACKAGE_PIN V16 [get_ports {A1}]
    set_property IOSTANDARD LVCMOS33 [get_ports {A1}]

set_property PACKAGE_PIN W16 [get_ports {A2}]
    set_property IOSTANDARD LVCMOS33 [get_ports {A2}]

set_property PACKAGE_PIN W17 [get_ports {A3}]
    set_property IOSTANDARD LVCMOS33 [get_ports {A3}]

set_property PACKAGE_PIN W15 [get_ports {B0}]
    set_property IOSTANDARD LVCMOS33 [get_ports {B0}]

set_property PACKAGE_PIN V15 [get_ports {B1}]
    set_property IOSTANDARD LVCMOS33 [get_ports {B1}]

set_property PACKAGE_PIN W14 [get_ports {B2}]
    set_property IOSTANDARD LVCMOS33 [get_ports {B2}]

set_property PACKAGE_PIN W13 [get_ports {B3}]
    set_property IOSTANDARD LVCMOS33 [get_ports {B3}]

# Select Bits 8 operators
set_property PACKAGE_PIN V2 [get_ports {sel[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {sel[0]}]

set_property PACKAGE_PIN T3 [get_ports {sel[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {sel[1]}]

set_property PACKAGE_PIN T2 [get_ports {sel[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {sel[2]}]

# Carry In for Addition
set_property PACKAGE_PIN R3 [get_ports {CinC}]
    set_property IOSTANDARD LVCMOS33 [get_ports {CinC}]

#set_property PACKAGE_PIN W2 [get_ports {in13}]
#set_property IOSTANDARD LVCMOS33 [get_ports {in13}]

#set_property PACKAGE_PIN U1 [get_ports {in14}]
#set_property IOSTANDARD LVCMOS33 [get_ports {in14}]

#set_property PACKAGE_PIN T1 [get_ports {in15}]
#set_property IOSTANDARD LVCMOS33 [get_ports {in15}]

#set_property PACKAGE_PIN R [get_ports {in16}]
#set_property IOSTANDARD LVCMOS33 [get_ports {in16}]


# LEDs for Output
set_property PACKAGE_PIN U16 [get_ports {Outt[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {Outt[0]}]
 
set_property PACKAGE_PIN E19 [get_ports {Outt[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {Outt[1]}]
 
set_property PACKAGE_PIN U19 [get_ports {Outt[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {Outt[2]}]
 
set_property PACKAGE_PIN V19 [get_ports {Outt[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {Outt[3]}]
# Carryout Bit for Overflow 
set_property PACKAGE_PIN W18 [get_ports {Coutco}]
    set_property IOSTANDARD LVCMOS33 [get_ports {Coutco}]
 
 
