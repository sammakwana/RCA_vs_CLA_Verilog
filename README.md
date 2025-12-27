# Ripple Carry Adder vs Carry Look-Ahead Adder (Verilog)

This project implements and compares two fundamental digital adder architectures using Verilog HDL:

- 4-bit Ripple Carry Adder (RCA)
- 4-bit Carry Look-Ahead Adder (CLA)

The designs are verified through simulation and synthesized using Xilinx Vivado to study structural and timing behavior.

---

## 📌 Project Overview

Adders are critical building blocks in digital systems.  
This project demonstrates how carry propagation affects performance by comparing:

- **Ripple Carry Adder**: Sequential carry propagation (simpler but slower)
- **Carry Look-Ahead Adder**: Parallel carry computation using propagate and generate logic (faster but more logic)

---

## 🛠 Tools Used
- Verilog HDL
- Xilinx Vivado 2025.2
- Behavioral Simulation
- RTL Synthesis

---

## 📂 Project Structure
ripple_carry_adder/        → RCA design & testbench
carry_lookahead_adder/    → CLA design & testbench
waveforms/                → Simulation waveform screenshots
schematics/               → Synthesized design schematics

---

## 🧪 Simulation & Timing Analysis

Behavioral simulation was performed using Vivado.  
By introducing delays in the logic, carry propagation timing was observed:

| Adder Type | Carry Behavior |
|-----------|----------------|
| Ripple Carry Adder | Sequential carry propagation |
| Carry Look-Ahead Adder | Parallel carry computation |

Waveform screenshots are included in the `waveforms/` folder.

---

## 🔧 Synthesis Results

Both designs were synthesized in Vivado.  
The synthesized schematics show how RTL logic is mapped to FPGA LUTs.

- RCA uses simpler logic with carry rippling between stages
- CLA uses additional logic to reduce carry delay

Synthesized schematics are available in the `schematics/` folder.

---

## 🎯 Key Learnings

- Difference between sequential and parallel carry propagation
- Trade-off between speed and logic complexity
- Writing synthesizable Verilog
- Testbench creation and waveform analysis
- RTL to hardware mapping using Vivado

---

## 🚀 Future Work
- Extend design to 8-bit or 16-bit adders
- Integrate CLA into an ALU
- Perform post-synthesis timing analysis

---

## 👤 Author
**Samir**  
Electronics & Communication Engineering  
Learning VLSI & Digital Design