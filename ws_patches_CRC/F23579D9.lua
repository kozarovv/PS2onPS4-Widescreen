apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=IGPX - Immortal Grand Prix (U)(SLUS-21430)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0031ef78,0x080d5ad4)
eeObj.WriteMem32(0x0031ef7c,0x00000000)
eeObj.WriteMem32(0x00356b50,0x3c013f40)
eeObj.WriteMem32(0x00356b54,0x4481f000)
eeObj.WriteMem32(0x00356b58,0xc6010068)
eeObj.WriteMem32(0x00356b5c,0xc602006c)
eeObj.WriteMem32(0x00356b60,0x461e0843)
eeObj.WriteMem32(0x00356b64,0xe6010068)
eeObj.WriteMem32(0x00356b68,0x080c7be0)
end

emuObj.AddVsyncHook(widescreen)