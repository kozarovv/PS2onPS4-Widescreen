apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MLB Slugfest 2006 (U)(SLUS-21342)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001547ac,0x080696b4)
eeObj.WriteMem32(0x001a5ad0,0xc4600068)
eeObj.WriteMem32(0x001a5ad4,0x3c013f40)
eeObj.WriteMem32(0x001a5ad8,0x4481f000)
eeObj.WriteMem32(0x001a5adc,0x461e0003)
eeObj.WriteMem32(0x001a5ae0,0xe4800068)
eeObj.WriteMem32(0x001a5ae4,0x080551ec)
end

emuObj.AddVsyncHook(widescreen)