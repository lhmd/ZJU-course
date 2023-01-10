// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps

  module TEST_gate;
          reg <signal1>;
          reg [2:0] <signal2>;
          wire [3:0] <signal3>;
          wire <signal4>;

          <module_name> <instance_name> (
                  <port1>,
                  <port2>
          );

          integer <name1>;
          integer <name2>;

   // The following code initializes the Global Set Reset (GSR) and Global Three-State (GTS) nets
   // Refer to the Synthesis and Simulation Design Guide for more information on this process
   reg GSR;
   assign glbl.GSR = GSR;
   reg GTS;
   assign glbl.GTS = GTS;

   initial begin
      GSR = 1;
      GTS = 0; // GTS is not activated by default
      #100; // GSR is set for 100 ns
      GSR = 0;
   end

  // Initialize Inputs
      `define auto_init

      `ifdef auto_init

          initial begin
          end

      `endif
  endmodule
