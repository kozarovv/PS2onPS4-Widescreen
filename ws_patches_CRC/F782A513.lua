apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bust a Move Dance Summit 2001 (J)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0025fa54,0x3c013f40)
eeObj.WriteMem32(0x0025fa58,0x44810000)
eeObj.WriteMem32(0x0025fa60,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)