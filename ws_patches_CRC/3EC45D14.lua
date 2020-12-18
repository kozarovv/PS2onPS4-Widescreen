apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Game Play
--0000803f efee6e3f 00000000
eeObj.WriteMem32(0x004AE2AC,0x3f400000)

--Render Fix
--0000a043 00006043 (2nd)
eeObj.WriteMem32(0x004AE2A4,0x44200000)
end

emuObj.AddVsyncHook(widescreen)