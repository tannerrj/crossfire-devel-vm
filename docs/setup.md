# Virtual Box Set Up

HOWTO guide for setting up Virtual Box and importing the CF Devel Virtual Machine

## VirtualBox Installation

### Install VirtualBox on Windows

 1. Visit <https://www.virtualbox.org/wiki/Downloads>
 2. Click on `Windows hosts`
 3. Wait for the download to finish
 4. Open `Windows Explorer` and then open `Downloads`
 5. Double-click the `Virtual Box` installation file
 6. If the `UAC (User Access Control)` pop-up window appears, click `Yes` button to continue
 7. You should now see the `Oracle VirtualBox` installation wizard
 8. Proceed with the installation by clicking `Next` or `Yes`
 9. If you see a warning prompt about resetting the network connection, make sure to click `Yes`
 10. Any prompts about installing additional dependencies (i.e., `Python Core` or `Win32api`), click `Yes`
 11. When prompted, click on the `Install` button
 12. And finally, click the `Finish` button when the install has completed


You can access `VirtualBox` through your Program Files menu 


### Install VirtualBox on Linux

The exact sytax to install VirtualBox on your choice of Linux distro will vary, but looks like on nearly all Linux distros the package name is `virtualbox`

Examples:

    sudo apt install virtualbox

    sudo dnf install virtualbox

    sudo pacman -S virtualbox

You can launch or access `VirtualBox` through your application launcher

### Install VirtualBox on (Intel) Mac OS

 1. Visit <https://www.virtualbox.org/wiki/Downloads>
 2. Click on `macOS / Intel hosts`
 3. Wait for the download to finish
 4. Launch `Finder` and then open `Downloads`
 5. Double click to open or launch the downloaded VirtualBox `.dmg` file to start the installation process
 6. You should now see the `Oracle VirtualBox` installation wizard
 7. Proceed with the installation by clicking `Continue` or `Install`
 8. Enter the necessary login credentials to authorize the software installation
 9. Once the installation has completed, click `Close`
 10. VirtualBox is now installed

You can launch or access `VirtualBox` from your `Applications` folder


## VirtualMachine Download

### Download

Download the Virtual Machine OVF file from [Google Drive](https://drive.google.com/file/d/14h4jBSPbw_QnwRSoPQ-sXx8wrgwn3QDo/view?usp=sharing) at 4.99 GB.

HashSUM

 * md5 = dd86be9a7ffbc638109760de84a85fd0
 * shasum = 231f319c04bce6f0c5e743a18e5f054deb773c3f
 * shasum256 = 8aba9dbc073023a3637ed403def675d5012267a997d3861eab4aa8d8187ab6d4

## VirtualMachine Import

VirtualBox interface is the same for Linux, MacOS, and Windows - so the following instructions apply for all three (3) deployments.

 1. Launch VirtualBox
 2. Click on `Tools`
 3. Click on `Import` button
 4. Click on the folder icon to locate the vm OVF file
 5. The OVF file is likely in your `Downloads` folder, so navigate to there and select the OVF file
 6. Click the `Open` button
 7. Click the `Next`button
 8. Click the `Finish` button
 9. Wait for VirtualBox to import the VM, this could take a couple of minutes
 10. IMPORTANT: click the `Settings` button if you want or need to change the configuration of the VM such as CPU cores, RAM, network settings, et al.
 11. Click the `Start` button to launch the VM

References:

 * <https://www.simplified.guide/virtualbox/vm-import>
 * <https://docs.oracle.com/en/virtualization/virtualbox/6.0/user/ovf.html>

## VirtualMachine Export

In case it is necessary, here is how the VM was created and exported as a OVA file

 1. Launch VirtualBox
 2. Click on `Tools`
 3. Click on `Export` button
 4. Select `Open Virtualization Format 1.0`
 5. Choose a `file name` that the exported virtual machine will use and the location it will be saved to (defaults to the `Documents` directory)
 6. Select `Include only NAT network adapter MAC addresses`
 7. Place a check next to `Write Manifest file`
 8. Click `Next`
 9. Adjust `Virtual system settings`
 10. Click `Export` and wait for the OVA file creation to finish
 

References:

 * <https://www.simplified.guide/virtualbox/vm-export>
 * <https://docs.oracle.com/en/virtualization/virtualbox/6.0/user/ovf.html>








