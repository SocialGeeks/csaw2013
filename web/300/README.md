# Web - herpderper - 300 Points  

## Challenge page  

herpderper.apk  

## Hint

Hint for herpderper: Simple web bugs are simple.  


## Notes  

	$ file herpderper.apk  
	herpderper.apk: Java Jar file data (zip)  

Looks like an [Android Package file](http://www.fileinfo.com/extension/apk).  

herpderper.apk has been unzipped into herpderper.  

	$ ls -R herpderper/  
	herpderper:   
	AndroidManifest.xml  classes.dex  META-INF  res  resources.arsc  

	herpderper/META-INF:  
	CERT.RSA  CERT.SF  MANIFEST.MF  

	herpderper/res:  
	drawable-hdpi  drawable-mdpi  drawable-xhdpi  drawable-xxhdpi  layout  menu  

	herpderper/res/drawable-hdpi:  
	ic_launcher.png  

	herpderper/res/drawable-mdpi:  
	ic_launcher.png  

	herpderper/res/drawable-xhdpi:  
	ic_launcher.png  

	herpderper/res/drawable-xxhdpi:  
	ic_launcher.png  

	herpderper/res/layout:  
	activity_auth.xml  

	herpderper/res/menu:  
	super_secret_authorization.xml   

While running strings on resources.arsc, found this URL: https://webchal.isis.poly.edu/csaw.php

Visting that URL gives you an error "please access the site using the mobile application".  My guess is that this could be faked with a UserAgent string.  

