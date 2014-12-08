@ECHO OFF
REM ###########################################################################
REM # RTI Routing Service Simple File Adapter                                 #
REM ###########################################################################

SETLOCAL enabledelayedexpansion

REM Get rid of quotes
SET ROUTINGSERVICEHOME_NQ=%ROUTINGSERVICEHOME:"=%

REM Path to Java
SET JAVAC=javac.exe
SET JAR=jar.exe

REM Path to RTI Routing Service Adapter API
SET ADAPTER_CLASSPATH="%ROUTINGSERVICEHOME_NQ%\class\rtirsadapter.jar"

REM Path to RTI DDS Java API
SET DDS_CLASSPATH="%ROUTINGSERVICEHOME_NQ%\class\nddsjava.jar"

REM Ensure the 'objs' directory exists
IF NOT EXIST class (
    MD class
)

ECHO Building all the sources in 'routingservice' into 'class' directory...
FOR /R routingservice %%F IN (*.java) DO %JAVAC% -d class -sourcepath . -classpath %ADAPTER_CLASSPATH%;%DDS_CLASSPATH% "%%F"
%JAR% cf class/simplefileadapter.jar -C class routingservice
RD /S /Q class\routingservice
