apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Grim Adventures of Billy & Mandy (NTSC-U)(SLUS-21451)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9 
--0000803f 000080bf 00000000
eeObj.WriteMem32(0x00D467A4,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)