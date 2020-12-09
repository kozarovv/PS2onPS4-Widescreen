apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--803f013c 00288144 e0000224
eeObj.WriteMem32(0x00121c3c,0x3c013f40)

--0000803f 0000c03e 00000045
--eeObj.WriteMem32(0x00232554,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)