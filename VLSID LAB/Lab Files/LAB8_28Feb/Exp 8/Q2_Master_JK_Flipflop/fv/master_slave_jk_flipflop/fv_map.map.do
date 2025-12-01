
//input ports
add mapped point J J -type PI PI
add mapped point K K -type PI PI
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI

//output ports
add mapped point Q Q -type PO PO
add mapped point Q_bar Q_bar -type PO PO

//inout ports




//Sequential Pins
add mapped point master_Q/q master_Q_reg/Q -type DFF DFF
add mapped point Q/q Q_reg/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
