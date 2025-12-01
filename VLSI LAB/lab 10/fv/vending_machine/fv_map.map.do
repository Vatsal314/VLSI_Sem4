
//input ports
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI
add mapped point in[1] in[1] -type PI PI
add mapped point in[0] in[0] -type PI PI

//output ports
add mapped point out out -type PO PO
add mapped point change[1] change[1] -type PO PO
add mapped point change[0] change[0] -type PO PO
add mapped point c_state[1] c_state[1] -type PO PO
add mapped point c_state[0] c_state[0] -type PO PO
add mapped point n_state[1] n_state[1] -type PO PO
add mapped point n_state[0] n_state[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point n_state[1]/q n_state_reg[1]70/Q -type DLAT DLAT
add mapped point change[0]/q change_reg[0]67/Q -type DLAT DLAT
add mapped point change[1]/q change_reg[1]68/Q -type DLAT DLAT
add mapped point n_state[0]/q n_state_reg[0]69/Q -type DLAT DLAT
add mapped point out/q out_reg66/Q -type DLAT DLAT
add mapped point c_state[0]/q c_state_reg[0]/Q -type DFF DFF
add mapped point c_state[1]/q c_state_reg[1]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
