apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE SmackDown - Shut Your Mouth (PAL-E) (SLES-51283)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001035e4,0x3c013f40)
eeObj.WriteMem32(0x001035f0,0x44810000)
eeObj.WriteMem32(0x001035f4,0x4600c602)

-- 16:10
--eeObj.WriteMem32(0x001035e4,0x3c013f55)
--eeObj.WriteMem32(0x001035e8,0x34215555)
--eeObj.WriteMem32(0x001035f0,0x44810000)
--eeObj.WriteMem32(0x001035f4,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)