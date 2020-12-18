apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--0000803f 5555953f 00000045
eeObj.WriteMem32(0x0047CEBC,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)