apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MLB SlugFest 2004 (U)(SLUS-20618)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--680080c4 03100046 700080e4
eeObj.WriteMem32(0x00158f58,0x080dfb10)
eeObj.WriteMem32(0x0037ec40,0xc4800068)
eeObj.WriteMem32(0x0037ec44,0x3c013f40)
eeObj.WriteMem32(0x0037ec48,0x4481f000)
eeObj.WriteMem32(0x0037ec4c,0x461e0003)
eeObj.WriteMem32(0x0037ec50,0xe4800068)
eeObj.WriteMem32(0x0037ec54,0x080563d7)


end

emuObj.AddVsyncHook(widescreen)