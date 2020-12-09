apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht (NTSC-U by Arapapa)

--Widescreen hack 16:9

--803f033c 00188344 00000000
eeObj.WriteMem32(0x00270984,0x3c033f40)

--00000000 42091046 00c0033c
eeObj.WriteMem32(0x0027099c,0x460318c3)

eeObj.WriteMem32(0x008985d0,0x3F199999)
end

emuObj.AddVsyncHook(widescreen)