apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SD Gundam G Generation Spirits (J)(SLPS-25832)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

eeObj.WriteMem32(0x003314cc,0x081968d0)

eeObj.WriteMem32(0x0065a340,0x4617a883)
eeObj.WriteMem32(0x0065a344,0x3c013faa)
eeObj.WriteMem32(0x0065a348,0x3421aaab)
eeObj.WriteMem32(0x0065a34c,0x4481f000)
eeObj.WriteMem32(0x0065a350,0x461e1082)
eeObj.WriteMem32(0x0065a354,0x080cc534)

--eeObj.WriteMem32(0x0033147c,0x3c024100)
end

emuObj.AddVsyncHook(widescreen)