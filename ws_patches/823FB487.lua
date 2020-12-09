apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= cafe.naver.com/pscx2
eeObj.WriteMem32(0x0012AEB0,0x3C013F40)

--progressive code
eeObj.WriteMem32(0x001A4C0C,0x24110000)
eeObj.WriteMem32(0x001A4C1C,0x24130001)
eeObj.WriteMem32(0x00129B24,0x240403FF)
eeObj.WriteMem32(0x00129B2C,0x34840080)
eeObj.WriteMem32(0x00129BF4,0x34090066)
eeObj.WriteMem32(0x00129BFC,0x24080002)

--Additional Code for 480P 
eeObj.WriteMem32(0x001A4C10,0x24120050)
eeObj.WriteMem32(0x00129B04,0x24E701B8)
end

emuObj.AddVsyncHook(widescreen)