apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--0000803f 0000003f 0000a043
eeObj.WriteMem32(0x00346288,0x3F400000)
eeObj.WriteMem32(0x00346290,0x43E00000)
end

emuObj.AddVsyncHook(widescreen)