# OddParity-bit-Generator-using-FSM
This project implements an Odd Parity Bit Generator using a Finite State Machine (FSM). The FSM monitors incoming serial data bits and updates its state to track parity. When transmission ends, the circuit outputs a parity bit ensuring the total number of 1s is odd.

## ✨Features

- Odd parity bit generation using a Finite State Machine (FSM).

- Designed and implemented in Verilog HDL.

- Processes serial input data efficiently.

- Verified through simulation in Xilinx Vivado

## 🎯Objective

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

## 📋Truth Table
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

## 🧩File Structure
```
Odd_Parity_FSM/
│
├── odd_parity_fsm.v        # FSM-based Verilog design
├── odd_parity_fsm_tb.v     # Testbench
├── README.md               # Project documentation
```
## 🧪Simulation

- Tool Used: Xilinx Vivado

- The testbench applies various serial input sequences.

- Waveforms verify correct FSM transitions and parity generation.

## ▶️How to Run the Project (Vivado)

1. Open Xilinx Vivado

2. Create a New Project

3. Add **odd_parity_fsm.v** as Design Source

4. Add **odd_parity_fsm_tb.v** as Simulation Source

5. Set testbench as Top Module

6. Run Behavioral Simulation

7. Observe parity output in waveform window

## RTL Schematic Diagram

<img width="1614" height="856" alt="Image" src="https://github.com/user-attachments/assets/a359413a-d1a2-49ed-827f-d5036212c9a9" />

## 🛠️Tool 

- Xilinx Vivado

## Simulation Output Waveforms

<img width="1628" height="890" alt="Image" src="https://github.com/user-attachments/assets/3235c010-15d0-4ac8-99dd-a9c1c36c1e73" />

<img width="1636" height="860" alt="Image" src="https://github.com/user-attachments/assets/e1d81d01-6f36-4dae-b543-3719158a18cd" />

## 📚Applications

1. Digital communication systems

2. Error detection mechanisms

3. Data transmission protocols

## 📜License

This project is open-source and available for educational and research purposes.


