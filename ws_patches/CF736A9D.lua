apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Aqua Aqua (U)(SLUS-20162)
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x00191538,0x080782d4)
eeObj.WriteMem32(0x001e0b50,0x3c013f40)
eeObj.WriteMem32(0x001e0b54,0x4481f000)
eeObj.WriteMem32(0x001e0b58,0xc6010068)
eeObj.WriteMem32(0x001e0b5c,0xc602006c)
eeObj.WriteMem32(0x001e0b60,0x461e0843)
eeObj.WriteMem32(0x001e0b64,0xe6010068)
eeObj.WriteMem32(0x001e0b68,0x08064550)
end

emuObj.AddVsyncHook(widescreen)