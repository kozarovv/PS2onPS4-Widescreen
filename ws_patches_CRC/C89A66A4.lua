apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 78 - The Uchuu Daisensou (J)(SLPM-62618)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--00002044 00006043 0000a043
--00405544 00006043 00001044
eeObj.WriteMem32(0x0033d8f0,0x44554000)
eeObj.WriteMem32(0x0033d8f8,0x44100000)
end

emuObj.AddVsyncHook(widescreen)