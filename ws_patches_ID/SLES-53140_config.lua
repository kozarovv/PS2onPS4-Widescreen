apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Choro Q (PAL-E) (SLES-53140)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001f1d74,0x3c013f40)
eeObj.WriteMem32(0x001f1d80,0x44810000)
eeObj.WriteMem32(0x001f1d84,0x4600c602)
eeObj.WriteMem32(0x001b549c,0x3c0140a7)

-- 16:10
--eeObj.WriteMem32(0x001f1d74,0x3c013f55)
--eeObj.WriteMem32(0x001f1d78,0x34215555)
--eeObj.WriteMem32(0x001f1d80,0x44810000)
--eeObj.WriteMem32(0x001f1d84,0x4600c602)
--eeObj.WriteMem32(0x001b549c,0x3c014097)
end

emuObj.AddVsyncHook(widescreen)