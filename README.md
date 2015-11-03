# IoT-Maker-Den-Documentation-and-Guides

##Device Hardware and Software requirements
1. Windows 10 PC with two network adapters.  
	- One wired ethernet port (use USB Ethernet dongle if no wired ethernet port on your PC). Used connect the Raspberry Pi to the PC. 
	- One Wi-Fi or wired network connection. Used for internet connection sharing 
2. [Setup your PC](http://ms-iot.github.io/content/en-US/win10/SetupPCRPI.htm).
3. [Setup your Rasberry Pi 2](http://ms-iot.github.io/content/en-US/win10/SetupRPI.htm).
4. [Enabling Internet Connection Sharing](http://ms-iot.github.io/content/en-US/win10/ConnectToDevice.htm).
	- The advantage of using ISC is that each device is isolated behind the NAT provided by ISC.

##Recommendation
1. The default name for a freshly installed Raspberry Pi 2 is “minwinpc”.  You should rename all the devices to be used in the Maker Den to avoid Visual Studio deploying to Raspberry Pis that may be running elsewhere on the network with the default name.
	-	Fastest way to rename a Raspberry Pi is from the Windows 10 IoT Core Web Admin console. 
	-	Alternatively use [Powershell commands](http://ms-iot.github.io/content/en-US/win10/samples/PowerShell.htm)
	-	You’ll use this name in the Maker Den Bootstrap process

#Install Maker Den on to PC

1. First install [GitHub Windows Client Tools](http://git-scm.com/download/win)
2. Create a local bootstrap.bat file and copy and paste the contents of the [Maker Den Bootstrap](https://raw.githubusercontent.com/MakerDen/IoT-Maker-Den-Documentation-and-Guides/master/Resources/Setup/Bootstrap.bat) into the .bat file.
	- Modify the SET "RPiName=RPiIgnite15" line and change the value of RPiName to match the name you selected when you set up the Raspberry Pis.
	 