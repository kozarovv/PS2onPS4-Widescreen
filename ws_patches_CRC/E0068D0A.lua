apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sonic Gems collection (ntsc-j)(SLPM-66074)
--comment=Widescreen hack by Esppiral, file/--gametitle renamed by Aced14
eeObj.WriteMem32(0x00290960,0x3FAAAAAB)
eeObj.WriteMem32(0x016CC190,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)