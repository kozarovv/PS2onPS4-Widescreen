apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Britney's Dance Beat

--Widescreen
eeObj.WriteMem32(0x003467B4,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)