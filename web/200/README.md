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

socialgeek@socialgeek.com
socialgeek

original message: http://128.238.66.214/viewmessage.php?enc=W1mi1mZ9m4DTBdn2ckkCBjPpc%2Bjjyr9fvslPD01lLPHNpl36q%2FaDBlRiA11abxLbhNOrcFY4oFsXO4PPfBgcfS%2BjMjRMWJ25wQsZl56sRpqkDCoPuGJntLcfyeTJ0EVTbm8lsJy8FKHRpF2nLHf6NWijE5rRRjhKsf6isvCgxsM%3D

message w/ 1 character deleted: http://128.238.66.214/viewmessage.php?enc=W1mi1mZ9m4DTBdn2ckkCBjPpc%2Bjjyr9fvslPD01lLPNpl36q%2FaDBlRiA11abxLbhNOrcFY4oFsXO4PPfBgcfS%2BjMjRMWJ25wQsZl56sRpqkDCoPuGJntLcfyeTJ0EVTbm8lsJy8FKHRpF2nLHf6NWijE5rRRjhKsf6isvCgxsM%3D

message w/ link to key: http://128.238.66.214/viewmessage.php?enc=W1mi1mZ9m4DTBdn2ckc%2Bjjyr9fvslPD01lLPNpl36q%2FaDBlRiA11abxLbhNOrcFY4oFsXO4PPfBgcfS%2BjMjRMWJ25wQsZl56sRpqkDCoPuGJntLcfyeTJ0EVTbm8lsJy8FKHRpF2nLHf6NWijE5rRRjhKsf6isvCgxsM%3D

key: http://128.238.66.214/editnote.php?enc=RXva4Bedh28rj7XYepKAh1qyVV7s7UDPg%2FPV7BNviRH09W6V3qXV%2BUMIr78GrBYNpt4CbZlwPEm2xXgeXsn7%2FyfNX0ki8yEGNEFf%2Br17iR%2BvL%2FHEKKUNx9qbMBD507cN8Iy6zlASzkeiJMEb5IZk8GWIMWmCM42JPs86ofm33Bc%3D

