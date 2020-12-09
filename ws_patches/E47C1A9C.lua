apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Digital Devil Saga Avatar Tuner 2
--comment=NTSC-J Widescreen Hack by synce
eeObj.WriteMem32(0x0037ED64,0x3fc65461)
end

emuObj.AddVsyncHook(widescreen)