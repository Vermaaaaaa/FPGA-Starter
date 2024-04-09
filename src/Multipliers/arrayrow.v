module ArrayRow(

    input [7:0] a, // a goes from 0 to 7
    input b, // 
    input [6:0] c,
    input final_c,
    
    output c_out,
    output [6:0] sum,
    output product
);

wire [6:0] w1;

    // in a row we have 8 cell
    
ArrayCell AC1(

    a[0],
    b,
    c[0],
    1'b0,
    w1[0],
    product
    

);

ArrayCell AC2(

    a[1],
    b,
    c[1],
    w1[0],
    w1[1],
    sum[0]

);

ArrayCell AC3(

    a[2],
    b,
    c[2],
    w1[1],
    w1[2],
    sum[1]

);

ArrayCell AC4(

    a[3],
    b,
    c[3],
    w1[2],
    w1[3],
    sum[2]

);

ArrayCell AC5(

    a[4],
    b,
    c[4],
    w1[3],
    w1[4],
    sum[3]

);

ArrayCell AC6(

    a[5],
    b,
    c[5],
    w1[4],
    w1[5],
    sum[4]

);

ArrayCell AC7(

    a[6],
    b,
    c[6],
    w1[5],
    w1[6],
    sum[5]

);

ArrayCell AC8(

    a[7],
    b,
    final_c,
    w1[6],
    c_out,
    sum[6]

);

endmodule 