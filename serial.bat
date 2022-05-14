@echo off
mode con: cols=50 lines=50

echo [90mDisk
echo [90m------------[92m
wmic diskdrive get serialnumber
echo [90mMotherboard
echo [90m------------[92m
wmic baseboard get serialnumber
echo [90mSMBios
echo [90m------------[92m
wmic path win32_computersystemproduct get uuid
echo [90mGPU
echo [90m------------[92m
wmic PATH Win32_VideoController GET Description,PNPDeviceID
echo [90mRAM
echo [90m------------[92m
wmic memorychip get serialnumber
echo [90mBios
echo [90m------------[92m
wmic csproduct get uuid
echo [90mCPU
echo [90m------------[92m
wmic cpu get processorid
echo [90mMacAddress
echo [90m------------[92m
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
pause