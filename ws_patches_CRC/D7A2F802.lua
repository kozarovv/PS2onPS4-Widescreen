apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=InuYasha - Secret of the Cursed Mask(SLUS-20913) WS patch
--3D field models
eeObj.WriteMem32(0x0020F680,0x3F400000)
eeObj.WriteMem32(0x0020F688,0x3F400000)
--eeObj.WriteMem32(0x0020F684,0x3FAAAAA8)
--3D menu models
eeObj.WriteMem32(0x002353E0,0x3F400000)
eeObj.WriteMem32(0x002353E8,0x3F400000)
--eeObj.WriteMem32(0x002353E4,0x3FAAAAA8)
--fights
eeObj.WriteMem32(0x0025808C,0x44555555)
--"after fight" screen
eeObj.WriteMem32(0x00250222,0x00000023)
eeObj.WriteMem32(0x0024F074,0x3F54924A)
--"if not" doesn't work, hence another 4 lines of code for wrongly affected stuff--p
eeObj.WriteMem32(0x00250222,0x00000020)
eeObj.WriteMem32(0x0024F074,0x3F8DB6DC)
eeObj.WriteMem32(0x00250222,0x00000021)
eeObj.WriteMem32(0x0024F074,0x3F8DB6DC)
end

emuObj.AddVsyncHook(widescreen)