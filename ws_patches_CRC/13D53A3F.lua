apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--0000803f 00000000 16177070 17167170 (1st)
eeObj.WriteMem32(0x0024e048,0x3f400000)

--Memory Hack
--0000803f 6566663f 0000803f 0000803f 6566663f 0000803f
--eeObj.WriteMem32(0x00294184,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)