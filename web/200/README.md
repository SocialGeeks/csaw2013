# Web - Nevernote - 200 Points  

## Challenge page  

http://128.238.66.214  
from: Nevernote Admin   
to: challenger@ctf.isis.poly.edu  
date: Thurs, Sep 19, 2013 at 3:05 PM  
subject: Help  

Friend,  
Evil hackers have taken control of the Nevernote server and locked me out. While I'm working on restoring access, is there anyway you can get in to my account and save a copy of my notes? I know the system is super secure but if anybody can do it - its you.  
Thanks,  
Nevernote Admin  

## Hint  

Hint for Nevernote: Nevernote admin checks his links  

## Notes

Appears to be an XSS attack of some sort.  

The value of enc= on the viewmessage.php page is a base 64 encoded string: raw byte data.
