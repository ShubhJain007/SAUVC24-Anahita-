# Anahita AUV Source Code Directory

This directory contains the core source code and prebuilt drivers for the Anahita Autonomous Underwater Vehicle (AUV) developed by Team AUV IITK for the Singapore Autonomous Underwater Vehicle Challenge (SAUVC) 2024.

## Overview

The `src` directory houses the software stack, including prebuilt drivers, navigation logic, perception algorithms, and control systems, along with essential configurations for operating the Anahita AUV.

## Key Components
### **AnahitaPlus**
- Contains all the code required to run the vehicle - bootup, perception, naviagtion, control, sensors stc.
### **dv-a50-ros-driver.**
- **Purpose**: This file contains the **prebuilt driver** for the Doppler Velocity Log (DVL), a critical sensor for underwater navigation.
- **Functionality**:
  - Provides velocity measurements relative to the seafloor.
  - Aids in accurate navigation and positioning of the AUV.
- **Usage**:
  - Integrated into the navigation module for trajectory planning and stability.
  - Used in real-world deployments to ensure precise movement underwater.


### **uuv_simulation**
- Includes tools and configurations to test the AUV's software stack in a virtual environment built on a prebuilt simulator.
- Simulations are useful for validating algorithms before deployment.

---

## Usage Instructions

### Setting Up the Driver
1. Ensure that the DVL hardware is properly connected to the AUV's onboard computer.
2. Integrate the prebuilt driver (`dv--a50..`) with the navigation module:
   - Include the driver in your build system (e.g., CMake).
   - Configure communication parameters (e.g., baud rate, port) in the configuration file.

### Running the System
1. **Start the AUV's core functionalities**:
   ```bash
   roslaunch anahita_bringup anahita.launch
