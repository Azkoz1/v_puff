# 💨 Advanced Disposable Vape (Puff) Script for FiveM

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Platform](https://img.shields.io/badge/platform-FiveM-orange.svg)

A lightweight and immersive script to add **Disposable Vapes (Puffs)** to your FiveM server. This script features custom animations, smoke particle effects, and a hit-limit system.

## ✨ Features

* **Hit Limit System:** Each vape has a specific number of puffs. Once empty, it becomes unusable.
* **Immersive Animations:** The player performs a realistic hand-to-mouth animation.
* **Visual Effects (PTFX):** High-quality smoke particle clouds spawned at the player's mouth.
* **Optimized:** Minimal resource usage (0.00ms on idle).
* **Standalone:** Works on any server (ESX, QB-Core, or vMenu).

## 🛠️ Installation

1.  Download the repository.
2.  Extract the folder into your `resources` directory (rename it to `v_puff`).
3.  Add the following line to your `server.cfg`:
    ```lua
    ensure v_puff
    ```
4.  Restart your server or start the resource manually via the console.

## 🚀 How to use

By default, the script uses a command for testing purposes. You can easily bind this to an inventory item.

* **Command:** `/usepuff`
* **Logic:**
    * Player triggers the animation.
    * Smoke appears after 2 seconds.
    * The puff counter decreases on the server side.

## 📂 Project Structure

```text
.
├── client.lua      # Handles animations and smoke particles
├── server.lua      # Handles hit-limit logic and sync
├── fxmanifest.lua  # FiveM resource metadata
└── README.md       # Documentation
<img width="269" height="126" alt="Capture d&#39;écran 2026-01-28 173620" src="https://github.com/user-attachments/assets/ee0673e0-9304-4744-a3d7-2816482be902" />
