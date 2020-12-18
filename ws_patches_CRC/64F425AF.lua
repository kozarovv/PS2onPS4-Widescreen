apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00129d18,0x3C024400)
eeObj.WriteMem32(0x0014CCFC,0x3C024455)
eeObj.WriteMem32(0x00163A88,0x3C024455)
eeObj.WriteMem32(0x001A6608,0x3C024455)
end

emuObj.AddVsyncHook(widescreen)