

## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]                                                    
      set_property IOSTANDARD LVCMOS33 [get_ports clk]
      create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
## Switches

set_property PACKAGE_PIN W2 [get_ports {reset}]                                       
       set_property IOSTANDARD LVCMOS33 [get_ports {reset}]
set_property PACKAGE_PIN U1 [get_ports {continue}]                                       
       set_property IOSTANDARD LVCMOS33 [get_ports {continue}]
set_property PACKAGE_PIN T1 [get_ports {pause}]                                       
       set_property IOSTANDARD LVCMOS33 [get_ports {pause}]
set_property PACKAGE_PIN R2 [get_ports {start}]                                       
       set_property IOSTANDARD LVCMOS33 [get_ports {start}]
 


        
        
##7 segment display
set_property PACKAGE_PIN W7 [get_ports {b1}]                                       
        set_property IOSTANDARD LVCMOS33 [get_ports {b1}]
set_property PACKAGE_PIN W6 [get_ports {b2}]                                       
        set_property IOSTANDARD LVCMOS33 [get_ports {b2}]
set_property PACKAGE_PIN U8 [get_ports {a3}]                                       
        set_property IOSTANDARD LVCMOS33 [get_ports {a3}]
set_property PACKAGE_PIN V8 [get_ports {a4}]                                       
        set_property IOSTANDARD LVCMOS33 [get_ports {a4}]
set_property PACKAGE_PIN U5 [get_ports {a5}]                                       
        set_property IOSTANDARD LVCMOS33 [get_ports {a5}]
set_property PACKAGE_PIN V5 [get_ports {a6}]                                       
        set_property IOSTANDARD LVCMOS33 [get_ports {a6}]
set_property PACKAGE_PIN U7 [get_ports {a7}]                                       
        set_property IOSTANDARD LVCMOS33 [get_ports {a7}]

set_property PACKAGE_PIN V7 [get_ports dp]                                                     
        set_property IOSTANDARD LVCMOS33 [get_ports dp]

set_property PACKAGE_PIN U2 [get_ports {a}]                                        
        set_property IOSTANDARD LVCMOS33 [get_ports {a}]
set_property PACKAGE_PIN U4 [get_ports {b}]                                        
        set_property IOSTANDARD LVCMOS33 [get_ports {b}]
set_property PACKAGE_PIN V4 [get_ports {c}]                                        
        set_property IOSTANDARD LVCMOS33 [get_ports {c}]
set_property PACKAGE_PIN W4 [get_ports {d}]                                        
        set_property IOSTANDARD LVCMOS33 [get_ports {d}]


