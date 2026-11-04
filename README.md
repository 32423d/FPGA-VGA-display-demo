# FPGA VGA Display Demo

VGA display controller running on a Terasic **DE10-Lite** FPGA board. A white rectangle is drawn on a VGA monitor and controlled with the board's switches and push buttons.

## Controls

| Input | Function |
|---|---|
| `KEY0` | Asynchronous reset |
| `KEY1` | Step / action button (moves, recolors, or resizes depending on the switches) |
| `SW3` / `SW2` / `SW1` / `SW0` | Direction: Left / Up / Down / Right |
| `SW9` | Bonus: random color mode |
| `SW8` | Bonus: size change mode |
| `HEX1`, `HEX2` | Show `Er` when there is an error |

## Features

| # | Feature | Description | Video |
|---|---|---|---|
| 1 | Draw rectangle | A white 100×50 rectangle drawn on the screen, with its first pixel at (189, 269) | <video src="https://github.com/user-attachments/assets/39bd13f2-3bdb-447c-bfa4-fcac33207317" controls width="320"></video> |
| 2 | Asynchronous reset | Pressing `KEY0` resets all registers and control signals to their default values | <video src="https://github.com/user-attachments/assets/d5e1c449-9db4-42d4-a1f1-46daa86161c2" controls width="320"></video> |
| 3 | Direction control | One switch selects the direction (`SW0` right, `SW1` down, `SW2` up, `SW3` left); each `KEY1` press moves the rectangle 20 pixels | <video src="https://github.com/user-attachments/assets/1ae5f656-c6be-485a-a749-f0d54e58c16a" controls width="320"></video> |
| 4 | Multi-switch error | Flipping more than one direction switch up shows `Er` on the HEX displays; one switch at a time works normally | <video src="https://github.com/user-attachments/assets/1bcbcfc9-e8a8-444c-92e2-bf05d54b74fe" controls width="320"></video> |
| 5 | Boundary error | Moving the rectangle into the screen edge stops it and shows `Er` on the HEX displays | <video src="https://github.com/user-attachments/assets/33bb5410-f097-43c5-9eb8-6e0ada822b6d" controls width="320"></video> |
| 6 | Random color (bonus) | With `SW9` up, each `KEY1` press changes the rectangle to a random color that is never black | <video src="https://github.com/user-attachments/assets/0aa5bad7-82a6-40bf-891a-c3fb4b305ebd" controls width="320"></video> |
| 7 | Size changer (bonus) | With `SW8` up, each `KEY1` press doubles the rectangle's size, up to a maximum of 400×200 pixels | <video src="https://github.com/user-attachments/assets/840d35f8-0ec7-4f20-9564-ed3d7a562dc5" controls width="320"></video> |

## Hardware

- Terasic DE10-Lite (Intel MAX 10) FPGA board
- VGA monitor
