apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dr. Muto (PAL-M5) (SLES-50710)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00100464,0x3c013fcc)
eeObj.WriteMem32(0x00100468,0x3421cccd)
eeObj.WriteMem32(0x00101c2c,0x3c013f41)
eeObj.WriteMem32(0x00101c30,0x34219d7d)
end

emuObj.AddVsyncHook(widescreen)