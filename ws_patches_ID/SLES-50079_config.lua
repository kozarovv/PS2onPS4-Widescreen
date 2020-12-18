apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Armored Core 2 (PAL-E) (SLES-50079)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0028b02c,0x3c013f40)
eeObj.WriteMem32(0x0028b038,0x44810000)
eeObj.WriteMem32(0x0028b03c,0x4600c602)
eeObj.WriteMem32(0x001b3f2c,0x3c013f40)
eeObj.WriteMem32(0x001b3f3c,0x4481f000)
eeObj.WriteMem32(0x001b3f40,0x461e6b42)

-- 16:10
--eeObj.WriteMem32(0x0028b02c,0x3c013f55)
--eeObj.WriteMem32(0x0028b030,0x34215555)
--eeObj.WriteMem32(0x0028b038,0x44810000)
--eeObj.WriteMem32(0x0028b03c,0x4600c602)
--eeObj.WriteMem32(0x001b3f2c,0x3c013f55)
--eeObj.WriteMem32(0x001b3f30,0x34215555)
--eeObj.WriteMem32(0x001b3f3c,0x4481f000)
--eeObj.WriteMem32(0x001b3f40,0x461e6b42)
end

emuObj.AddVsyncHook(widescreen)