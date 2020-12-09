apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

--16:9
eeObj.WriteMem32(0x001426e8,0x3c033fe3)
eeObj.WriteMem32(0x001426ec,0x34638e39)
end

emuObj.AddVsyncHook(widescreen)