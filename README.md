What I Did:
RTL Modeling: Designed a synthesizable 4-bit synchronous up-counter module in Verilog using an edge-triggered procedural block (always @(posedge clk or negedge rst_n)).
Reset Implementation: Integrated an active-low asynchronous reset (rst_n) to initialize the counter register to 4'b0000 immediately upon assertion.
Testbench Development: Created a dedicated Verilog testbench generating a continuous clock signal and controlling reset sequencing to simulate realistic hardware transitions.
Cloud Simulation: Executed functional verification on EDA Playground using the Icarus Verilog (0.10.0) simulator without local tool overhead.
Waveform Verification: Dumped VCD simulation data and inspected signal transitions in EPWave / GTKWave, verifying accurate counting from 0 ($0000_2$) to 15 ($1111_2$) followed by modulo-16 rollover.

Key Learnings:
Synchronous Counting Dynamics: Learned that synchronizing state updates to a single clock edge eliminates intermediate glitching and hazards associated with asynchronous ripple counters.
Sequential Logic & Register Inference: Understood how to use non-blocking assignments (<=) within edge-triggered blocks to properly infer a 4-bit hardware register (reg [3:0] count).
Active-Low Asynchronous Reset Control: Mastered the priority structure of reset logic, ensuring the hardware safely recovers to a known initial state regardless of the clock phase.
Modulo-16 Rollover Behavior: Observed natural unsigned arithmetic overflow where exceeding the register boundary ($2^4 - 1 = 15$) causes an automatic wrap-around to zero without extra conditional logic.
Simulation & Dumpfile Workflow: Learned how to configure EDA Playground testbenches with $dumpfile and $dumpvars commands to capture signal traces for waveform debugging.
