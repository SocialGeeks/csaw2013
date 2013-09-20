# Reversing - Impossible - 500 Points  

WTF, his hp is over 9000! Beat the game to get your key.  
impossible.nds  

Hint for Impossible: Are you sure that's the full key?  

_Notes:_  

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

