module unit(
    input [3:0] oper,
    input [7:0] num_val,
    output reg [7:0] A, 
    output reg [7:0] B, 
    output reg [7:0] Y
    );
    //if btnC then set numeric value (8 bit num) to A or B
    
    wire [7:0] Y_val; 
    full_adder twos(//do addition use full_adder 
        .A(),
        .Y(Y_val)
    ); 
    
    always @(*) begin
        case(oper)
            0: oper = Y_val; //addition
            1: oper  = //subtraction        
            2: oper  = //shift left        
            3: oper  = //shift right        
            4: oper  = //comparison        
            5: oper  = //AND        
            6: oper  = //OR        
            7: oper  = //XOR        
            8: oper  = //NAND
            9: oper  = //NOR;        
            10: oper = //XNOR        
            11: oper = //NOT        
            12: oper = //TWO'S COMP        
            13: oper = //STORE A        
            14: oper = //SWAP A/B       
            15: oper = A;//LOAD A       
        endcase
    end
endmodule
