# Reversing - DotNet - 100 Points  

## Challenge page  

DotNetReversing.exe  

## Notes  

	$ file DotNetReversing.exe  
	DotNetReversing.exe: PE32 executable (console) Intel 80386 Mono/.Net assembly, for MS Windows  
	
	This is a .net application. It is easly reversed with ILSPY.
	At the top of the application main you see 2 values that are XORed together. do that math, that is the password.
	The application will spit out the flag after you type in that value.
