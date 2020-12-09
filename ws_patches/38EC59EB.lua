apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

--Widescreen hack 16:9

eeObj.WriteMem32(0x002773C0,0x3F400000)

--Zoom
--eeObj.WriteMem32(0x001d2580,0x3c073f40)
end

emuObj.AddVsyncHook(widescreen)