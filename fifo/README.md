# Synchronous FIFO using Verilog HDL

## Project Overview

This project implements an **8-bit wide, 16-depth Synchronous FIFO (First-In First-Out)** memory using Verilog HDL. The FIFO stores data in the order it is received and outputs the data in the same order.

The design includes **write**, **read**, **full**, and **empty** functionality. A complete testbench is provided to verify the FIFO operation through simulation.

---

## Features

- 8-bit data width
- 16 memory locations
- Synchronous read and write
- Full flag
- Empty flag
- Circular pointer implementation
- Verilog HDL
- Testbench included
- GTKWave/Vivado compatible

---

## FIFO Block Diagram

```
          +----------------------+
Write --->|                      |
Data ----->|      FIFO Memory     |----> Read Data
Read ----->|                      |
           +----------------------+
              |             |
           Full Flag    Empty Flag
```

---

## Files

| File | Description |
|------|-------------|
| fifo.v | FIFO design |
| fifo_tb.v | Testbench |
| waveform.vcd | Simulation waveform |
| waveform.png | Waveform screenshot |
| README.md | Project documentation |

---

## Software Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Xilinx Vivado (Optional)

---

## Simulation

Compile

```bash
iverilog -o fifo fifo.v fifo_tb.v
```

Run

```bash
vvp fifo
```

View Waveform

```bash
gtkwave waveform.vcd
```

---

## FIFO Specifications

| Parameter | Value |
|-----------|-------|
| Data Width | 8 bits |
| FIFO Depth | 16 |
| Write Clock | Common Clock |
| Read Clock | Common Clock |

---

## Author

Your Name