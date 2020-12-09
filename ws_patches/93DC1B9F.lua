apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Red Ninja - Kekka no Mai (J)(SLPM-65945)
--comment=Widescreen hack by ElHecht (NTSC-J by Arapapa)

--Wide Screen hack 16:9

--803f013c 00608144 46c30046       403f013c 00708144 46c30046
eeObj.WriteMem32(0x0036f794,0x3c013f40)
eeObj.WriteMem32(0x0036f798,0x44817000)

--86630046 46ac0046 03630046      03730e46 46ac0046 03630046
eeObj.WriteMem32(0x0036f7a8,0x460e7303)

--00000000 32080046 00000000 07000145(1st)
eeObj.WriteMem32(0x00409b58,0x3c013f40)
eeObj.WriteMem32(0x00409b60,0x4481f000)

--00000000 20008046 080000ae
eeObj.WriteMem32(0x00409bb0,0x4602f782)

--42080246 100000ae 02000246
eeObj.WriteMem32(0x00409bc4,0x461e0842)

--003f013c 00008144 803d013c
eeObj.WriteMem32(0x00363ecc,0x3c013f2b)

--16c3013c 00688144 (3c7e74c4)
eeObj.WriteMem32(0x0010ab60,0x3c01c380)

--1643013c 00688144 3000a427  
eeObj.WriteMem32(0x0010ab94,0x3c014380)
end

emuObj.AddVsyncHook(widescreen)