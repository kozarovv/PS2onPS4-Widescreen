apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x001B0980,0x3C023F10)
eeObj.WriteMem32(0x00145FE0,0x3C023F22)
end

emuObj.AddVsyncHook(widescreen)