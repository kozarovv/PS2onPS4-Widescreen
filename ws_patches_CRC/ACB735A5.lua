apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=AirBlade (NTSC-U)
--comment=Widescreen Hack
eeObj.WriteMem32(0x002EB9D0,0x3FAAAAAA)
end

emuObj.AddVsyncHook(widescreen)