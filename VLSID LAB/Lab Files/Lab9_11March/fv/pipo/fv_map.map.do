
//input ports
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI
add mapped point pi[3] pi[3] -type PI PI
add mapped point pi[2] pi[2] -type PI PI
add mapped point pi[1] pi[1] -type PI PI
add mapped point pi[0] pi[0] -type PI PI

//output ports
add mapped point po[3] po[3] -type PO PO
add mapped point po[2] po[2] -type PO PO
add mapped point po[1] po[1] -type PO PO
add mapped point po[0] po[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point po[3]/q po_reg[3]/Q -type DFF DFF
add mapped point po[2]/q po_reg[2]/Q -type DFF DFF
add mapped point po[0]/q po_reg[0]/Q -type DFF DFF
add mapped point po[1]/q po_reg[1]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
