
//input ports
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI
add mapped point m m -type PI PI

//output ports
add mapped point count[3] count[3] -type PO PO
add mapped point count[2] count[2] -type PO PO
add mapped point count[1] count[1] -type PO PO
add mapped point count[0] count[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point count[3]/q count_reg[3]/Q -type DFF DFF
add mapped point count[2]/q count_reg[2]/Q -type DFF DFF
add mapped point count[1]/q count_reg[1]/Q -type DFF DFF
add mapped point count[0]/q count_reg[0]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
