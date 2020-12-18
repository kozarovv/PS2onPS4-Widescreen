apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

eeObj.WriteMem32(0x0048E604,0x3F400000)
eeObj.WriteMem32(0x0048FBE4,0x3F400000)

eeObj.WriteMem32(0x002A74DC,0x3C023FAA)
eeObj.WriteMem32(0x002A74E8,0x460D6B03)
eeObj.WriteMem32(0x00282B3C,0x3C023F40)
eeObj.WriteMem32(0x002A74E0,0x44826800)
eeObj.WriteMem32(0x00282B40,0x3C02BF40)
eeObj.WriteMem32(0x00147318,0x0C064C33)
eeObj.WriteMem32(0x00148228,0x0C064C33)
eeObj.WriteMem32(0x001482AC,0x0C064C33)
eeObj.WriteMem32(0x00148928,0x0C064C33)
eeObj.WriteMem32(0x001930CC,0x460D6B43)
eeObj.WriteMem32(0x001930D4,0x3C023FC0)
eeObj.WriteMem32(0x00193124,0x460D6B40)
eeObj.WriteMem32(0x00192DE0,0x24E772A0)
eeObj.WriteMem32(0x00192E54,0x250872A0)
eeObj.WriteMem32(0x00192ECC,0x25086680)
eeObj.WriteMem32(0x00192F3C,0x25296680)
end

emuObj.AddVsyncHook(widescreen)