
//input ports
add mapped point clk clk -type PI PI
add mapped point reset reset -type PI PI
add mapped point mode[1] mode[1] -type PI PI
add mapped point mode[0] mode[0] -type PI PI
add mapped point data_in[3] data_in[3] -type PI PI
add mapped point data_in[2] data_in[2] -type PI PI
add mapped point data_in[1] data_in[1] -type PI PI
add mapped point data_in[0] data_in[0] -type PI PI
add mapped point serial_in serial_in -type PI PI

//output ports
add mapped point data_out[3] data_out[3] -type PO PO
add mapped point data_out[2] data_out[2] -type PO PO
add mapped point data_out[1] data_out[1] -type PO PO
add mapped point data_out[0] data_out[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point data_out[0]/q data_out_reg[0]/Q -type DFF DFF
add mapped point data_out[1]/q data_out_reg[1]/Q -type DFF DFF
add mapped point data_out[3]/q data_out_reg[3]/Q -type DFF DFF
add mapped point data_out[2]/q data_out_reg[2]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
