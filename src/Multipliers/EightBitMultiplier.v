module EightBitArrayMultiplier(

input [7:0] a, // declaring, so the bus is behind the variable
input [7:0] b,
//input [7:0] c,   // intermediary step so c is not there
//input c_in, there is no carry in

output  c_out,
output [15:0] product
);
//any thing going from sub to sub module is a wire.
    wire [6:0] andwires;
    wire [6:0] sum;
    wire [6:0] coutwire; //these are the cout final wires in the diagram
    
    and (product[0],a[0],b[0]); //these are the and gates at the top, 8 gates, check diagram with purple in notes
    and (andwires[0],a[1],b[0]);
    and (andwires[1],a[2],b[0]);
    and (andwires[2],a[3],b[0]);
    and (andwires[3],a[4],b[0]);
    and (andwires[4],a[5],b[0]);
    and (andwires[5],a[6],b[0]);
    and (andwires[6],a[7],b[0]);
    
    ArrayRow row2(
    a[7:0], //a goes from 7 to 0    a
    b[1], //b is gonna be the same    b 
    andwires[6:0] , // a0 b0 coming in to adder    c
    1'b0, // final c which is an input is set to 0
    
    coutwire[0],
    sum[6:0] , //sum changes so we use 7 to 0
    product[1]

    );
    
    ArrayRow row3(
    a[7:0], //a goes from 7 to 0    a
    b[2], //b is gonna be the same    b 
    sum[6:0], // coming in to adder    c
    coutwire[0], // final c
    
    coutwire[1],
    sum[6:0] , //sum changes so we use 7 to 0
    product[2]

    );
    
    ArrayRow row4(
    a[7:0], //a goes from 7 to 0    a
    b[3], //b is gonna be the same    b 
    sum[6:0], // coming in to adder    c
    coutwire[1], // final c
    
    coutwire[2],
    sum[6:0] , //sum changes so we use 7 to 0
    product[3]

    );
    
    ArrayRow row5(
    a[7:0], //a goes from 7 to 0    a
    b[4], //b is gonna be the same    b 
    sum[6:0], // coming in to adder    c
    coutwire[2], // final c
    
    coutwire[3],
    sum[6:0], //sum changes so we use 7 to 0
    product[4]

    );
    
    ArrayRow row6(
    a[7:0], //a goes from 7 to 0    a
    b[5], //b is gonna be the same    b 
    sum[6:0], // coming in to adder    c
    coutwire[3], // final c
    
    coutwire[4],
    sum[6:0], //sum changes so we use 7 to 0
    product[5]

    );
    
    ArrayRow row7(
    a[7:0], //a goes from 7 to 0    a
    b[6], //b is gonna be the same    b 
    sum[6:0], // coming in to adder    c
    coutwire[4], // final c
    
    coutwire[5],
    sum[6:0], //sum changes so we use 7 to 0
    product[6]

    );
    
    ArrayRow row8(
    a[7:0], //a goes from 7 to 0    a
    b[6], //b is gonna be the same    b 
    sum[6:0], // coming in to adder    c
    coutwire[5], // final c
    
    product[15],
    product[14:8] , //sum changes so we use 7 to 0
    product[7]

    );    
endmodule