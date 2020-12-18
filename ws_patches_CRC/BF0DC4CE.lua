apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tenchu - Fatal Shadows (PAL-G) (SLES-53014)
--comment=Widescreen hack

-- 16:9
eeObj.WriteMem32(0x0012ef24,0x3c023f40)
eeObj.WriteMem32(0x0012ef48,0x3c023f40)
eeObj.WriteMem32(0x0012f738,0x3c024455)

-- 16:10
--eeObj.WriteMem32(0x00136e9c,0x3c1b3f55)
--eeObj.WriteMem32(0x00136ea4,0x377b5555)
--eeObj.WriteMem32(0x0012ef2c,0xac3be1d4)
--eeObj.WriteMem32(0x00154a04,0xac3be1d4)
--eeObj.WriteMem32(0x0012f738,0x3c024440)
end

emuObj.AddVsyncHook(widescreen)