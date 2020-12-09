# PS2onPS4-Widescreen
Collection of PS2 widescreen patches ported to PS2onPS4 format

## Usage
Since PCSX2 use CRC instead of Game ID, and it seems they not provide any CRC to Game ID database. 
We need to find out which CRC match our game. To do that we can use one of following ways:

* Check CRC running PCSX2. To do that simply launch your game, and check titlebar in log window.
![alt text](https://github.com/kozarovv/PS2onPS4-Widescreen/blob/main/pcsx2.jpg?raw=true)
* Check CRC using dedicated app/script (https://github.com/kozarovv/PS2onPS4-Widescreen/blob/main/crc.py).
![alt text](https://github.com/kozarovv/PS2onPS4-Widescreen/blob/main/crc_calc.jpg?raw=true)
* By lookup on pcsx2 wiki, some of CRC sums are posted in info tab there.

Now when we have our game CRC, we need to find corresponding file. Since github not offer file search as far as i know. 
Best way will be to download whole repository, and find file in windows search. Now all we need to do is renaming file from {CRC} to {Game ID}
For example our game is World Championship Poker (US release), and we found that CRC is 215DB422. So we need to rename 215DB422.lua file to SLUS-21028_config.lua .
That's all file is ready to use with your game. 

Now when we have our file, we just need to use it as lua configuration for our game.

## Credits
* PCSX2 widescreen patches archive - [Pcsx2 Forums](https://forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=271674#pid271674)
* All creators of ws patches
* asahui for original CRC script [Gist](https://gist.github.com/asahui/a6af64606a9476a40442274335f5feaf)

Note: During conversion patch comments were left untouched to keep in-file credits where possible.
