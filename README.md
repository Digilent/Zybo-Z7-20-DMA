Zybo-Z7-20-DMA Demo
====================

Description
-----------

This project demonstrates how to use the Zybo Z7-20's Audio Codec and RAM to record samples of audio and play them back. Vivado is used to build the demo's hardware platform, and Xilinx SDK is used to program the bitstream onto the board and to build and deploy a C application.

To use this demo, the Zybo Z7-20 must be connected to a computer over MicroUSB, which must be running a serial terminal. For more information on how to set up and use a serial terminal, such as Tera Term or PuTTY, refer to [this tutorial](https://reference.digilentinc.com/learn/programmable-logic/tutorials/tera-term).

The audio demo records a 5 second sample from microphone(J6) or line in (J7) and plays it back on headphone out(J5). Recording and playback are controlled by push buttons from a usb uart serial menu as shown below.

|  Button  | Function             |
| -------- | -------------------- |
|  BTN0    |  no effect           |
|  BTN1    |  record from mic in  |
|  BTN2    |  play on hph out     |
|  BTN3    |  record from line in |



Requirements
------------
* **Zybo Z7-20**: To purchase a Zybo Z7-20, see the [Digilent Store](https://store.digilentinc.com/zybo-z7-zynq-7000-arm-fpga-soc-development-board/).
* **Vivado and Vitis 2020.1 Installations**: To set up Vivado, see the [Installing Vivado, Vitis, and Digilent Board Files Tutorial](https://reference.digilentinc.com/learn/programmable-logic/tutorials/2020.1/installation).
* **Serial Terminal Emulator**: 
* **MicroUSB Cable**
* **Audio cables, Headphones, and a Microphone**

Demo Setup
----------

1. Download the most recent release ZIP archives from the repo's [releases page](https://github.com/Digilent/Zybo-Z7-20-DMA/releases). These files are called "Zybo-Z7-20-DMA-hw.xpr.zip" and "Zybo-Z7-20-DMA-sw.ide.zip". The -hw archive contains an exported XPR project file and associated sources for use with Vivado. The -sw archive contains exported project files for use with Vitis. Both of these files contain the build products of the associated tool.
2. Extract the downloaded -hw archive. (Do not extract the -sw archive)
3. Open Vivado 2020.1.
4. Open the XPR project file, found at \<archive extracted location\>/hw/hw.xpr, included in the extracted hardware release in Vivado 2020.1.
5. No additional steps are required within Vivado. The project can be viewed, modified, and rebuilt, and a new platform can be exported, as desired.
6. Open Vitis 2020.1. Choose an empty folder as the *Workspace* to launch into.
7. With Vitis opened, click the **Import Project** button, under **PROJECT** in the welcome screen.
8. Choose *Vitis project exported zip file* as the Import type, then click **Next**.
9. **Browse** for the downloaded -sw archive, and **Open** it.
10. Make sure that all boxes are checked in order to import each of the projects present in the archive will be imported, then click **Finish**.
11. Plug in your audio sources and sinks.
12. Open a serial terminal application (such as [TeraTerm](https://ttssh2.osdn.jp/index.html.en) and connect it to the Zybo Z7-20's serial port, using a baud rate of 115200.
13. In the *Assistant* pane at the bottom left of the Vitis window, right click on the project marked `[System]`, and select **Run** -> **Launch Hardware**. When the demo is finished launching, messages will be able to be seen through the serial terminal, and the demo can be used as described in this document's *Description* section, above.

Next Steps
----------
This demo can be used as a basis for other projects by modifying the hardware platform in the Vivado project's block design or by modifying the SDK application project.

Check out the Zybo Z7-20's [Resource Center](https://reference.digilentinc.com/reference/programmable-logic/zybo-z7/start) to find more documentation, demos, and tutorials.

For technical support or questions, please post on the [Digilent Forum](forum.digilentinc.com).

Additional Notes
----------------
For more information on how this project is version controlled, refer to the [digilent-vivado-scripts repo](https://github.com/digilent/digilent-vivado-scripts) and [digilent-vitis-scripts](https://github.com/digilent/digilent-vitis-scripts) repositories.
