# OddParity-bit-Generator-using-FSM
This project implements an Odd Parity Bit Generator using a Finite State Machine (FSM). The FSM monitors incoming serial data bits and updates its state to track parity. When transmission ends, the circuit outputs a parity bit ensuring the total number of 1s is odd.
🎯 Objective

To design an FSM-based odd parity generator

To understand FSM concepts in Verilog

To verify functionality through simulation

⚙️ Inputs and Outputs
Inputs

clk : Clock signal

rst : Active-high reset

data_in : Serial input data bit

Output

parity_out : Generated odd parity bit

🔁 FSM Description

The FSM tracks whether the number of received 1s is even or odd:

State S0 → Even number of 1’s

State S1 → Odd number of 1’s

State transitions occur on each clock edge based on data_in.

📋 Truth Table
+---------+-----------+------------+
| State   | data_in   | Next State |
+---------+-----------+------------+
| Even    |     0     |    Even    |
| Even    |     1     |     Odd    |
| Odd     |     0     |     Odd    |
| Odd     |     1     |    Even    |
+---------+-----------+------------+


If final state is Even, parity bit = 1

If final state is Odd, parity bit = 0

🧩 File Structure
Odd_Parity_FSM/
│
├── odd_parity_fsm.v        # FSM-based Verilog design
├── odd_parity_fsm_tb.v     # Testbench
├── README.md               # Project documentation

🧪 Simulation

Tool Used: Xilinx Vivado

The testbench applies various serial input sequences.

Waveforms verify correct FSM transitions and parity generation.

▶️ How to Run the Project (Vivado)

Open Xilinx Vivado

Create a New Project

Add odd_parity_fsm.v as Design Source

Add odd_parity_fsm_tb.v as Simulation Source

Set testbench as Top Module

Run Behavioral Simulation

Observe parity output in waveform window

🛠️ Tools & Technologies

Verilog HDL

FSM (Finite State Machine)

Xilinx Vivado

📚 Applications

Digital communication systems

Error detection mechanisms

Data transmission protocols

👩‍💻 Author

Divyani Hazari
Final Year ECE Student
