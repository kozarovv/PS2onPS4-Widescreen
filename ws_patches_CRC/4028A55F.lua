apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack
eeObj.WriteMem32(0x0018A2F0,0x3C013F3F)
eeObj.WriteMem32(0x001949D4,0x3C013F3F)
eeObj.WriteMem32(0x0018A280,0x3C013FE2)
eeObj.WriteMem32(0x0018A284,0x3421FC95)
eeObj.WriteMem32(0x00199C3C,0x3C013FE2)
eeObj.WriteMem32(0x00199C40,0x3421FC95)
eeObj.WriteMem32(0x00199C70,0x3C013FE2)
eeObj.WriteMem32(0x00199C74,0x3421FC95)
eeObj.WriteMem32(0x0019A038,0x3C013FE2)
eeObj.WriteMem32(0x0019A03C,0x3421FC95)
eeObj.WriteMem32(0x0019A520,0x3C013FE2)
eeObj.WriteMem32(0x0019A524,0x3421FC95)
eeObj.WriteMem32(0x0019B5C8,0x3C013FE2)
eeObj.WriteMem32(0x0019B5CC,0x3421FC95)
eeObj.WriteMem32(0x002A8914,0x3C013FE2)
eeObj.WriteMem32(0x002A8918,0x3421FC95)
eeObj.WriteMem32(0x002A8948,0x3C013FE2)
eeObj.WriteMem32(0x002A894C,0x3421FC95)
end

emuObj.AddVsyncHook(widescreen)