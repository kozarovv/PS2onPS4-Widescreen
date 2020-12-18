apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dragon Ball Z - Sparking! NEO (K)(SLKA-25397)
--comment=Widescreen hack by sergx12 (NTSC-K by Arapapa)

-- 16:9
--403f013c 00a08144
eeObj.WriteMem32(0x0012b758,0x3c013f10)

--803f013c 00088144 1000a527
eeObj.WriteMem32(0x00259e70,0x3c013f40)

--803f013c 00208144 0045013c
eeObj.WriteMem32(0x0025b684,0x3c013f40)

--803f013c 00008144 86230046
eeObj.WriteMem32(0x0025b720,0x3c013f40)
eeObj.WriteMem32(0x0025b780,0x3c013f40)

eeObj.WriteMem32(0x00386820,0x44105555)
eeObj.WriteMem32(0x00386858,0x44105555)
eeObj.WriteMem32(0x00386874,0x44105555)
eeObj.WriteMem32(0x00386880,0x44105555)
end

emuObj.AddVsyncHook(widescreen)