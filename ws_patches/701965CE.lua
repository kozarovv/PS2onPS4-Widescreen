apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--0000803f 00000000 16177070 17167170
eeObj.WriteMem32(0x002b26c0,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)