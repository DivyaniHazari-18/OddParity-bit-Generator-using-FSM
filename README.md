# OddParity-bit-Generator-using-FSM
This project designs an Odd Parity Bit Generator using an FSM that monitors serial input data and tracks parity. After data transmission, it outputs a parity bit to ensure an odd number of 1s, enabling basic error detection.

## 🎯 Objective

- Step 1:  To design an FSM-based odd parity generator

- Step 2:  To understand FSM concepts in Verilog

- Step 3:  To verify functionality through simulation

## ⚙️Inputs and Outputs

### Inputs:

- `clk` : Clock signal

- `rst` : Active-high reset

- `data_in` : Serial input data bit

### Output:

- `parity_out` : Generated odd parity bit

## 🔁FSM Description

The FSM tracks whether the number of received 1s is even or odd:

- State S0 → Even number of 1’s

- State S1 → Odd number of 1’s

State transitions occur on each clock edge based on data_in.

## 📋 Truth Table
```
+---------+-----------+------------+
| State   | data_in   | Next State |
+---------+-----------+------------+
| Even    |     0     |    Even    |
| Even    |     1     |     Odd    |
| Odd     |     0     |     Odd    |
| Odd     |     1     |    Even    |
+---------+-----------+------------+
```

If final state is Even, parity bit = 1

If final state is Odd, parity bit = 0

## 🧩 File Structure
```
Odd_Parity_FSM/
│
├── odd_parity_fsm.v        # FSM-based Verilog design
├── odd_parity_fsm_tb.v     # Testbench
├── README.md               # Project documentation
```
## 🧪 Simulation

- Tool Used: Xilinx Vivado

- The testbench applies various serial input sequences.

- Waveforms verify correct FSM transitions and parity generation.

## ▶️ How to Run the Project (Vivado)

1. Open Xilinx Vivado

2. Create a New Project

3. Add **odd_parity_fsm.v** as Design Source

4. Add **odd_parity_fsm_tb.v** as Simulation Source

5. Set testbench as Top Module

6. Run Behavioral Simulation

7. Observe parity output in waveform window

## 🛠️ Tools & Technologies

- Verilog HDL

- FSM (Finite State Machine)

- Xilinx Vivado

## 📚 Applications

1. Digital communication systems

2. Error detection mechanisms

3. Data transmission protocols

## 👩‍💻 Author

*Divyani Hazari
Final Year ECE Student
