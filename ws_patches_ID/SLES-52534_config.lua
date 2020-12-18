apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Crimson Tears (PAL-M3) (SLES-52534)
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001bcb78,0x3c02bfe3)
eeObj.WriteMem32(0x001bcb80,0x34438e39)

-- 16:10
--eeObj.WriteMem32(0x001bcb78,0x3c02bfcc)
--eeObj.WriteMem32(0x001bcb80,0x3443cccd)
end

emuObj.AddVsyncHook(widescreen)