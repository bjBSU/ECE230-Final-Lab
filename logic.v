module logic(
    input [3:0] operator,
    input reset,
    output reg [3:0] action
    );
    
    always @(operator, reset) begin
           if(operator == 4'b1111)//this is 15
                action <= 4'b1101;
           else if (operator == 4'b1101) begin
                action <= 4'b1011;
           end else if (operator == 4'b1011) begin
                action <= 4'b0111;
           end else if (operator == 4'b0111) begin
                action <= 4'b1110;
           end 
      end
    
endmodule
