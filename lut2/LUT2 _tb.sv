module LUT2_tb;
  logic O, I0, I1;
  
  // instantiating the module to map connections
  LUT2 LUT2_INST( .I0(I0), .I1(I1), .O(O) );
  
  initial
    begin
      I0 = 1'b0;
      I1 = 1'b0;

      #5
      I0 = 1'b0;
      I1 = 1'b1;      
      
      #5
      I0 = 1'b1;
      I1 = 1'b0;
      
      #5
      I0 = 1'b1;
      I1 = 1'b1;
    end
  
    initial
    begin
      $display("                Tempo   Entradas LUT2    Saídas");
      $display("                         IO    I1       O");
      $display("                ====   ============  =======");
      $monitor($time,"     %b      %b       %b", I0, I1, O);
    end
  
endmodule