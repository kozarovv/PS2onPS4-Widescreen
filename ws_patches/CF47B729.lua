apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bujingai: Swordmaster [PAL-M5] (SLES-52495)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001219B4,0x3C023F40)
eeObj.WriteMem32(0x00374EF8,0x3F990000)

-- 16:10
--eeObj.WriteMem32(0x001219b4,0x3c193f55)
--eeObj.WriteMem32(0x001219c8,0x37395555)
--eeObj.WriteMem32(0x00121a5c,0xac396b00)
--eeObj.WriteMem32(0x00121a60,0x03e00008)
--eeObj.WriteMem32(0x00121a64,0x27bd0010)
end

emuObj.AddVsyncHook(widescreen)