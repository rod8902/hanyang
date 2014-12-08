****************************************************
           RTI Administration Console       
****************************************************

1. Installing RTI Administration Console
----------------------------------------

RTI Administration Console is installed automatically as part of RTI
Professional Edition. If you are downloading it separately, unzip the downloaded
file into the RTI Connext Messaging / RTI Connext DDS home directory.

2. Installing the License File
----------------------------------------

If you are using the license managed version of Connext Messaging, the Admin Console
requires a valid license to run. You will receive one via email after you download 
the software. Save the license file in any location of your choice. When Admin Console 
starts, it will look in these locations until it finds a valid license:

   i. The last saved, valid license location of the current user (if Admin Console has been run before).  
   ii. The file specified in the environment variable RTI_LICENSE_FILE, which you may 
   set to point to the full path of the license file, including the filename 
   (for example, C:\RTI\my_rti_license.dat).
   iii. The file rti_license.dat in the current working directory.
   iv. The file rti_license.dat in the directory specified by the environment variable NDDSHOME.

If Admin Console cannot find a valid license file automatically, it will prompt you to 
enter the location of a license file. If you have any questions about license installation, 
please contact support@rti.com.

3. Getting Started
----------------------------------------
To start the Admin Console:
	On Windows: Run [RTI Admin Console directory]/scripts/rtiadminconsole.exe

	On Linux: Run [RTI Admin Console directory]/scripts/rtiadminconsole

The documentation and tutorial are built into the RTI Administration Console. 
When Admin Console starts for the first time, a welcome screen will be displayed
and you'll see links to the Documentation. In the future, you can reach the 
documentation through Admin Console's main menu through Help -> Help Contents.




Technical Support
Real-Time Innovations, Inc.
232 E. Java Drive
Sunnyvale, CA 94089
Phone: (408) 990-7444
Email: support@rti.com
Website: https://support.rti.com/

© 2006-2012 Real-Time Innovations, Inc.
All rights reserved.
Printed in U.S.A. First printing.
Aug. 2012.
