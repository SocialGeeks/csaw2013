# Reversing - Impossible - 500 Points  

## Challenge page  

WTF, his hp is over 9000! Beat the game to get your key.  
impossible.nds  

## Hint  

Hint for Impossible: Are you sure that's the full key?  

## Notes  

	$ file impossible.nds  
	impossible.nds: data  

According to [FileInfo](http://www.fileinfo.com/extension/nds) this could be a game ROM for a Nintendo DS.  That looks like it jives with the code below found with strings.  

	INIT RENDERER  
	INIT DEBUG  
	BEGIN RUN LOOP  
	/home/kiwi/devkitPro/libnds/include/nds/arm9/background.h  
	layer >= 0 && layer <= 3  
	Only layers 0 - 3 are supported  
	tileBase >= 0 && tileBase <= 15  
	Background tile base is out of range  
	mapBase >=0 && mapBase <= 31  
	Background Map Base is out of range  
	layer > 1 || type == BgType_Text8bpp|| type == BgType_Text4bpp  
	Incorrect background type for mode  
	tileBase == 0 || type < BgType_Bmp8  
	Tile base is unused for bitmaps.  Can be offset using mapBase * 16KB  
	(size != BgSize_B8_512x1024 && size != BgSize_B8_1024x512)  
	Sub Display has no large Bitmaps  
	INIT GAMESTATE  
	vector::_M_insert_aux  
	INIT MAINMENUSTATE  
	start  
	vector::_M_insert_aux  
	INIT WINSTATE  
	vector::_M_insert_aux  
	ADD ENT  
	RENDER SHIP  
	RENDER WTF  
	fat1:/g88.dump  

Then there was a bunch more stuff.  Saw a reference to a java class.  Not sure if related or just something statically compiled into the file.  

Raw Info

	Header information:
	0x00  Game title                 .  ê        
	0x0C  Game code                  ####
	0x10  Maker code                   
	0x12  Unit code                  0x00
	0x13  Device type                0x00
	0x14  Device capacity            0x01 (2 Mbit)
	0x15  reserved 1                 000000000000000000
	0x1E  ROM version                0x00
	0x1F  reserved 2                 0x04
	0x20  ARM9 ROM offset            0x200
	0x24  ARM9 entry address         0x2000000
	0x28  ARM9 RAM address           0x2000000
	0x2C  ARM9 code size             0x2E8D4
	0x30  ARM7 ROM offset            0x2EC00
	0x34  ARM7 entry address         0x37F8000
	0x38  ARM7 RAM address           0x37F8000
	0x3C  ARM7 code size             0xFB98
	0x40  File name table offset     0x3E800
	0x44  File name table size       0x9
	0x48  FAT offset                 0x3EA00
	0x4C  FAT size                   0x0
	0x50  ARM9 overlay offset        0x0
	0x54  ARM9 overlay size          0x0
	0x58  ARM7 overlay offset        0x0
	0x5C  ARM7 overlay size          0x0
	0x60  ROM control info 1         0x007F7FFF
	0x64  ROM control info 2         0x203F1FFF
	0x68  Icon/title offset          0x3EA00
	0x6C  Secure area CRC            0x0000 (-, homebrew)
	0x6E  ROM control info 3         0x051E
	0x70  ?                          0x0
	0x74  ?                          0x0
	0x78  ?                          0x00000000
	0x7C  ?                          0x00000000
	0x80  Application end offset     0x0003F240
	0x84  ROM header size            0x00000200
	0xA0  ?                          0x4D415253
	0xA4  ?                          0x3131565F
	0xA8  ?                          0x00000030
	0xAC  ?                          0x53534150
	0xB0  ?                          0x00963130
	0x15C Logo CRC                   0x9E1A (OK)
	0x15E Header CRC                 0xFF06 (OK)

	Banner CRC                       0x81F4 (OK)
	English banner text, line 1      Impossible
	English banner text, line 2      www.devkitpro.org
	English banner text, line 3      www.drunkencoders.com

	File CRC32: 569666ED

	SMT dumper v1.0 curruption check: OK

	ARM7 binary hash : 81095DD0B93A28EE2602C959EE8F4A2232796880
	WARNING! ARM7 binary is NOT verified!

The ROM has been "unpacked".