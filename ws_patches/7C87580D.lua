apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Little Giant

--16:9
eeObj.WriteMem32(0x001c931c,0x3C023FE3)
eeObj.WriteMem32(0x001c9320,0x34428E39)

eeObj.WriteMem32(0x001d8c0c,0x3C023F2b)
end

emuObj.AddVsyncHook(widescreen)