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

Found apktool that allows you to uncompress the apk file.

	$ java -jar apktool1.5.2/apktool.jar d herpderper.apk herpderper_unpack  

After you make your changes to the android files you can use apktool to put it all back together again.  

	$ cd herpderper_unpack  
	$ java -jar ../apktool1.5.2/apktool.jar b  

If you get errors than you'll have to make sure that aapt is in your PATH.  

	$ find / -name aapt 2>/dev/null  
	/opt/android-sdk/build-tools/18.1.0/aapt  
	/opt/android-sdk/build-tools/18.0.1/aapt  
	/opt/android-sdk/build-tools/17.0.0/aapt  

	$ PATH=$PATH:/opt/android-sdk/build-tools/18.1.0

Then run the above apktool command again to build.  This will place the new apk file in dist/herpderper.apk  Next you need to sign the jar file.

You have to sign the jar file when you are done.

	$ keytool -genkeypair -keyalg RSA -sigalg MD5withRSA -dname "c=US,cn=John Doe, o=Sun, st=California, l=Santa Clara" -keystore MyKeyStore  
	$ jarsigner -keystore MyKeyStore -digestalg SHA1 -sigalg MD5withRSA dist/herpderper.apk mykey  

### Links

* [Sign Jar file](* http://www.haibane.org/node/13)  
* [Menu resources](https://developer.android.com/guide/topics/resources/menu-resource.html)  

