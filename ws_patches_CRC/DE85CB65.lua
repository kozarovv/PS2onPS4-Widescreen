apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 68 - The Runaway - Toumei Highway (J)(SLPM-62564)

--Widescreen hack 16:9

eeObj.WriteMem32(0x0018936c,0x3c013f40)
eeObj.WriteMem32(0x00189370,0x44810000)
eeObj.WriteMem32(0x00189378,0x4600c602)


end

emuObj.AddVsyncHook(widescreen)