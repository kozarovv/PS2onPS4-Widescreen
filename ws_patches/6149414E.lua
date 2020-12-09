apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by by Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x00299ac0,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)