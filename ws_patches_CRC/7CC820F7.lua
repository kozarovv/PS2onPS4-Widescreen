apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=widescreen 16:9 hack by 99skull (NTSC-J by Arapapa)

eeObj.WriteMem32(0x00140834,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)