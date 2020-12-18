apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Project Minerva [NTSC-J] (SLPM-65165)
--comment=Widescreen Hack by Little Gaint

eeObj.WriteMem32(0x00F2B608,0x3F206D3A)
eeObj.WriteMem32(0x00F322D4,0x3F5AE148)
end

emuObj.AddVsyncHook(widescreen)