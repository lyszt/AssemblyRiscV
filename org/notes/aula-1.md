# Computer Architecture Explained

This document breaks down the core concepts of computer architecture based on your notes, providing more detail on each topic.

---

## 1. Core Concepts

These are the foundational principles that govern how a computer is designed and operates.

* **ISA (Instruction Set Architecture)**: The ISA is the fundamental "language" that a processor (CPU) understands. It defines the complete set of commands the processor can execute. Think of it as a vocabulary and grammar rulebook.

  * **Examples**: `x86` is the ISA used by most desktop and laptop CPUs from Intel and AMD. `arm64` is the ISA used by most smartphones, tablets, and Apple's M-series chips. A program compiled for x86 cannot run on an ARM processor without translation or emulation because they speak different languages.

* **Interfaces and Abstraction**: Components like the CPU, RAM, and hard drive are designed to be self-contained. They communicate with each other through well-defined interfaces (like a USB port or a SATA connection). This means the CPU doesn't need to know *how* a hard drive stores data internally; it just needs to know the commands to request or send data through the interface. This principle is called **abstraction** or encapsulation.

* **Datapath and Control Path**: These are the two primary parts of a CPU.

  * **Datapath**: This is the "muscle" of the processor. It contains the circuits that perform arithmetic and logic operations (the ALU), as well as the registers for temporarily storing data.

  * **Control Path (or Control Unit)**: This is the "brain." It reads instructions from memory, decodes them, and then sends signals to the datapath to tell it what to do, which registers to use, and where to send the results.

* **Von Neumann Architecture**: This is the design model for virtually all modern computers. Its key principle is that **both program instructions and the data they operate on are stored together in the same main memory (RAM)**.

---

## 2. Assembly Language & The Instruction Cycle

This is where the high-level concepts meet the low-level execution.

* **Assembly Language**: A low-level programming language that is a human-readable representation of the raw machine code. Each line of assembly typically corresponds to one single CPU instruction.

  * `muli $2, $5, 4`: "Multiply the value in **register $5** by the constant value **4** and store the result in **register $2**."

  * `add $2, $4, $2`: "Add the value in **register $4** to the value in **register $2** and store the final result back into **register $2**."

  * `lw $15, 0($2)`: "Load Word." Go to the memory address stored in **register $2** (with an offset of 0), fetch the data (word) from that location in RAM, and load it into **register $15**."

* **Useful Tools**:

  * **godbolt.org**: An online tool that lets you write code in a high-level language (like C++) and see the corresponding assembly code it compiles to for various architectures (x86, ARM, etc.).

  * **Ripes**: A visual processor simulator that shows you exactly what happens inside the datapath and control path as each instruction is executed.

* **The Instruction Cycle**: The fundamental, repetitive cycle the CPU performs to execute a program.

  1. **Fetch**: The CPU fetches the next instruction from main memory. The address of this instruction is held in the Program Counter (PC).

  2. **Decode**: The Control Unit interprets the instruction to figure out what operation needs to be performed.

  3. **Fetch Operands**: The CPU retrieves the data required for the instruction. This data might be in registers (fast) or in main memory (slower).

  4. **Execute**: The Arithmetic Logic Unit (ALU) performs the actual operation (e.g., addition, multiplication).

  5. **Store Result**: The result of the execution is written back to a register or a location in main memory.

---

## 3. System Operations & Memory

This covers how the system starts up and manages programs.

* **Boot Process**: When you power on a computer, the CPU is hard-wired to start executing code from a specific, non-volatile memory address. This is the **BIOS** (or UEFI). The BIOS performs a power-on self-test (POST), detects hardware (keyboard, drives, RAM), and then finds a bootable device (like your SSD). It loads the operating system's bootloader from the drive into main memory and hands over control.

* **Programs in Main Memory**: This is a critical rule: **A program can only be executed by the CPU after it has been loaded from storage (SSD/HDD) into main memory (RAM).** The CPU cannot run programs directly from your disk because it's far too slow.

* **Program Counter (PC)**: The PC is a special register in the CPU that holds the **memory address of the next instruction to be fetched**. After an instruction is fetched, the PC is updated to point to the next one.

  * **Incrementing the PC**: The PC does not just increment by 1. It increments by the size of the instruction. In a 32-bit architecture where instructions are 4 bytes long, if the PC is at address `0x1000`, after fetching that instruction, it will increment to `0x1004` to be ready for the next one.

---

## 4. Functional Units (Unidades Funcionais)

These are the primary hardware components of the Von Neumann architecture.

* **CPU (Central Processing Unit)**: The core of the computer, containing:

  * **Control Unit**: Directs the flow of operations.

  * **ALU (Arithmetic Logic Unit)**: Performs calculations.

  * **Registers**: Extremely fast, small, on-chip memory for temporary data storage.

* **Main Memory (Memória Principal)**: RAM, where both instructions and data are stored for active programs.

* **Input/Output (Entrada e Saída)**: Devices that allow the computer to interact with the outside world (keyboard, mouse, monitor, network card).

