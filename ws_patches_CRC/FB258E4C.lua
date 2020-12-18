apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disgaea - Hour of Darkness (PAL-E) (SLES-52458)
--comment=Widescreen Hack by nemesis2000
-- Ported to PAL, added 16:10 support (ElHecht)

-- 16:9
eeObj.WriteMem32(0x0010598c,0x3c013f40)
eeObj.WriteMem32(0x00105998,0x44810000)
eeObj.WriteMem32(0x0010599c,0x4600c602)
eeObj.WriteMem32(0x001511c4,0x3c093f40)
eeObj.WriteMem32(0x001511cc,0xafa900dc)

-- 16:10
--eeObj.WriteMem32(0x0010598c,0x3c013f55)
--eeObj.WriteMem32(0x00105990,0x34215555)
--eeObj.WriteMem32(0x00105998,0x44810000)
--eeObj.WriteMem32(0x0010599c,0x4600c602)
--eeObj.WriteMem32(0x00150ec0,0x3c093f55)
--eeObj.WriteMem32(0x00150edc,0x35295555)
--eeObj.WriteMem32(0x001511cc,0xafa900dc)
end

emuObj.AddVsyncHook(widescreen)