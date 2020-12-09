apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Little Giant

--16:9
eeObj.WriteMem32(0x001C93CC,0x3C023FE3)
eeObj.WriteMem32(0x001C93D0,0x34428E39)

eeObj.WriteMem32(0x001D8CBC,0x3C023F2b)
end

emuObj.AddVsyncHook(widescreen)