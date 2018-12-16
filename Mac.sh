
#!/bin/bash
	Assetnumber=`hostname -s`
	Devicename=`system_profiler SPHardwareDataType | grep Model`
	SerialNumber=`system_profiler SPHardwareDataType | grep Serial`
	ModelNumber=`sw_vers -buildVersion`
	MACAddress=`ifconfig en1 | awk '/ether/{print $2}'`
	OSVersion=`sw_vers -productName`

	echo "$Assetnumber" "$Devicename" "$SerialNumber" "$ModelNumber" "$MACAddress" "$OSVersion" 


