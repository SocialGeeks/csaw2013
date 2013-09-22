# Misc - deeeeeeaaaaaadbeeeeeeeeeef - 200 Points

## Challenge site  

IMG_0707.png  

## Notes  

    $ file IMG_0707.png  
    IMG_0707.png: PNG image data, 3264 x 1681, 8-bit/color RGBA, non-interlaced  

When opening the file with feh, the following warnings were generated.

    libpng warning: IHDR: CRC error  
    libpng warning: IDAT: Too much image data  

* Image opens fine in Photoshop CS6. A "fixed" version is <tt>IMG_0707__resaved.png</tt>... makes you wonder what was added to the file to make it semi-corrupted though.

* Image shows deeeeeeaaaaaadbeeeeeeeeeed on a whiteboard emphasizing there are 6 e's and 6 a's in dead and 10 e's in beef.  Also has references to many subredits and other random (probably unrelated) notes.

* <tt>0xDEADBEEF</tt> ("dead beef") is frequently used to indicate a software crash or deadlock in embedded systems.  DEADBEEF was originally used to mark newly allocated areas of memory that had not yet been initialized -- when scanning a memory dump, it is easy to see the DEADBEEF.  It is used by IBM [[RS/6000]] systems, [[Mac OS]] on 32-bit [[PowerPC]] processors and the [[Commodore International|Commodore]] [[Amiga]] as a magic debug value. On [[Sun Microsystems]]' [[Solaris (operating system)|Solaris]], it marks freed kernel memory. On [[OpenVMS]] running on Alpha processors, DEAD_BEEF can be seen by pressing CTRL-T. The DEC Alpha SRM console has a background process that traps memory errors, identified by PS as "BeefEater waiting on 0xdeadbeef".<ref>{{cite web|url=http://www.catb.org/~esr/jargon/html/D/DEADBEEF.html |title=Jargon File entry for DEADBEEF |publisher=Catb.org |date= |accessdate=2009-10-01}}</ref>

* The number 0xDEADBEEF is equal to the less recognizable decimal number 3735928559 (unsigned) or -559038737 (signed).

used pngcheck to find the broken crc, recieved:

    IMG_0707.png  CRC error in chunk IHDR (computed fcc410a8, expected c1d0b3e4)

IMG_0707.fixdcrc.png contains the same image with the header crc fixed.

## Solution

pngcheck reveals a CRC error in the IHDR chunk and is able to fix it allowing you to see the image data.  This lets us pull up the image and see the image without any errors.  The photo is has a non-standard size ratio which looks like the image has been cropped.  Futhermore the hint image later published shows an arrow pointing to the bottom half of the image.  Everything suggesting that there is more to this image that isn't being shown.

Among other things the IHDR chunk specifies the image's dimensions which most graphic software reads in and uses it to display that much of the image even though.  It's invalid according to the CRC so someone changed something.  It quickly became obvious that the photo was cropped in height so with this we can pull up the original (non crc corrected) image in a hex editor and take a look at the values specified in the IHDR.   

	00 00 00 0D 49 48 44 52 00 00 0C C0 00 00 06 91 08 06 00 00 00 C1 D0 B3 E4

All chunks in a PNG file have the same basic struture.  The first 4 bytes is the length of the chunk.  The next 4 bytes is the chunk's type code.  In this case its IHDR.  It then has the chunk data and is followed up with a 4 byte CRC.  

	A png's specifications for the IHDR chunk is the following:

	The IHDR chunk must appear FIRST. It contains:
	Width: 4 bytes
	Height: 4 bytes
	Bit depth: 1 byte
	Color type: 1 byte
	Compression method: 1 byte
	Filter method: 1 byte
	Interlace method: 1 byte

We want to tweak the height so all we have to do is adjust the hex values from <tt>06 91</tt>, which specifies an image height of 1681 px, to <tt>09 90</tt>, 2448 px, making the image 3264 x 2448, a standard 4:3 ratio coming from an iPhone.  This makes the CRC check valid again and viewing the image is full sized and contains the key.
