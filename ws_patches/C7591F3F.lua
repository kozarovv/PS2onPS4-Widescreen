apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Aqua Aqua - Wetrix 2 (E)(SLES-50053)
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x00191658,0x08078294)
eeObj.WriteMem32(0x001e0a50,0x3c013f40)
eeObj.WriteMem32(0x001e0a54,0x4481f000)
eeObj.WriteMem32(0x001e0a58,0xc6010068)
eeObj.WriteMem32(0x001e0a5c,0xc602006c)
eeObj.WriteMem32(0x001e0a60,0x461e0843)
eeObj.WriteMem32(0x001e0a64,0xe6010068)
eeObj.WriteMem32(0x001e0a68,0x08064598)
end

emuObj.AddVsyncHook(widescreen)