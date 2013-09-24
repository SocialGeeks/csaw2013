# Misc - deeeeeeaaaaaadbeeeeeeeeeef - 200 Points

## Challenge site  

IMG_0707.png  

## Notes  

    $ file IMG_0707.png  
    IMG_0707.png: PNG image data, 3264 x 1681, 8-bit/color RGBA, non-interlaced  

When opening the file with feh, the following warnings were generated.

    libpng warning: IHDR: CRC error  
    libpng warning: IDAT: Too much image data  

* Image opens fine in Photoshop CS6. A "fixed" version is <tt>IMG_0707_resaved.png</tt>... makes you wonder what was added to the file to make it semi-corrupted though.

* Image shows deeeeeeaaaaaadbeeeeeeeeeed on a whiteboard emphasizing there are 6 e's and 6 a's in dead and 10 e's in beef.  Also has references to many subredits and other random (probably unrelated) notes.

* <tt>0xDEADBEEF</tt> ("dead beef") is frequently used to indicate a software crash or deadlock in embedded systems.  DEADBEEF was originally used to mark newly allocated areas of memory that had not yet been initialized -- when scanning a memory dump, it is easy to see the DEADBEEF.  It is used by IBM [[RS/6000]] systems, [[Mac OS]] on 32-bit [[PowerPC]] processors and the [[Commodore International|Commodore]] [[Amiga]] as a magic debug value. On [[Sun Microsystems]]' [[Solaris (operating system)|Solaris]], it marks freed kernel memory. On [[OpenVMS]] running on Alpha processors, DEAD_BEEF can be seen by pressing CTRL-T. The DEC Alpha SRM console has a background process that traps memory errors, identified by PS as "BeefEater waiting on 0xdeadbeef".<ref>{{cite web|url=http://www.catb.org/~esr/jargon/html/D/DEADBEEF.html |title=Jargon File entry for DEADBEEF |publisher=Catb.org |date= |accessdate=2009-10-01}}</ref>

* The number 0xDEADBEEF is equal to the less recognizable decimal number 3735928559 (unsigned) or -559038737 (signed).

used pngcheck to find the broken crc, recieved:

    IMG_0707.png  CRC error in chunk IHDR (computed fcc410a8, expected c1d0b3e4)

IMG_0707.fixdcrc.png contains the same image with the header crc fixed.

## Solution

pngcheck reveals a CRC error in the IHDR chunk and is able to fix it.  This lets us pull up the image and view it without any errors.  Looking at metadata the photo was taken from an iPhone but it has a non-standard size ratio so it looks like the image has been cropped.  As noted, opening in feh reveals that there is "Too much image data".  When try to convert or resave the file we notice it lose about 3MB of data.  Futhermore the hint image later published shows an arrow pointing to the bottom half of the image.  Everything suggesting that there is more to this image that isn't being shown.  It quickly became obvious that the photo was cropped in height.

Time to get dirty and pull up the file in a hex editor and look at the structure of the png file.  PNGs are made up of several chunks of data starting with the "IHDR" chunk.  Among other things the IHDR chunk specifies the image's dimensions which most graphic software reads in and uses it to display that much of the image and ignoring the rest of the extra data.  The thing is we know the IHDR is invalid according to the CRC check so someone changed something in the IHDR.  Looking at the values specified in the IHDR chunk we have:

	00 00 00 0D 49 48 44 52 00 00 0C C0 00 00 06 91 08 06 00 00 00 C1 D0 B3 E4

All chunks in a PNG file have the same basic struture.  The first 4 bytes is the length of the chunk.  The next 4 bytes is the chunk's type code.  It then has the chunk's data and followed up with a 4 byte CRC. Breaking it down a bit we have... 

	00 00 00 0D = 13 (size, hex to dec)
	49 48 44 52 = "IHDR" (chunk type, hex to ascii)
	00 00 0C C0 00 00 06 91 08 06 00 00 00 (chunk data)
	C1 D0 B3 E4 = CRC
 
A png's specifications for the IHDR chunk is the following:
 
	The IHDR chunk must appear FIRST. It contains:
	Width: 4 bytes
	Height: 4 bytes
	Bit depth: 1 byte
	Color type: 1 byte
	Compression method: 1 byte
	Filter method: 1 byte
	Interlace method: 1 byte
 
Breaking down the chunk data we have...
 
	00 00 0C C0 = Width (3264, hex to dec)
	00 00 06 91 = Height (1681, hex to dec)
	08 = Bit depth
	06 = Color type
	00 = Compression method
	00 = Filter method
	00 = Interlace method

We want to tweak the height so all we have to do is adjust the hex values from <tt>00 00 06 91</tt> to <tt>00 00 09 90</tt>, setting a 2448 px height, making the image 3264 x 2448, a standard 4:3 ratio coming from an iPhone.  This makes the CRC check valid again and viewing the image is full sized and contains the key.