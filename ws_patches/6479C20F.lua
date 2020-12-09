apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--7F AA AA 3F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 31 8D D6 3F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 D6 00 80 3F 00 00 80 3F
eeObj.WriteMem32(0x0039a630,0x3f800000)

--00 00 80 3F 00 00 80 3F 00 00 00 00 25 64 20 00
eeObj.WriteMem32(0x003816B4,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)