apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Digital Devil Saga Avatar Tuner (SLKA_253.00)
--comment=Widescreen Hack by synce (pnach by Arapapa)

eeObj.WriteMem32(0x00324264,0x3fc65461)
end

emuObj.AddVsyncHook(widescreen)