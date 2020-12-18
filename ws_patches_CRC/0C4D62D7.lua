apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x00ede2c8,0x08424ad4)
eeObj.WriteMem32(0x01092b50,0x3c013f40)
eeObj.WriteMem32(0x01092b54,0x4481f000)
eeObj.WriteMem32(0x01092b58,0xc6010068)
eeObj.WriteMem32(0x01092b5c,0xc602006c)
eeObj.WriteMem32(0x01092b60,0x461e0843)
eeObj.WriteMem32(0x01092b64,0xe6010068)
eeObj.WriteMem32(0x01092b68,0x083b78b4)
end

emuObj.AddVsyncHook(widescreen)