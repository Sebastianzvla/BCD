module BCD(
input [3:0]iZ,
input iClk,
output [6:0]oSeg
);
reg [6:0]roSeg_q;
reg [6:0]roSeg_d;

assign oSeg = roSeg_q;

always @ (posedge iClk)
begin
roSeg_q = roSeg_d;
end 

always @*
begin

case (iZ)      //  abcdefg
4'd0: begin roSeg_d = 7'b1111110; end
4'd1: begin roSeg_d = 7'b0110000; end
4'd2: begin roSeg_d = 7'b1101101; end
4'd3: begin roSeg_d = 7'b1111001; end
4'd4: begin roSeg_d = 7'b0110011; end
4'd5: begin roSeg_d = 7'b1011011; end
4'd6: begin roSeg_d = 7'b1011111; end
4'd7: begin roSeg_d = 7'b1110000; end
4'd8: begin roSeg_d = 7'b1111111; end
4'd09: begin roSeg_d =7'b1111011; end
default: begin roSeg_d = roSeg_q; end

endcase
end
 
endmodule 
