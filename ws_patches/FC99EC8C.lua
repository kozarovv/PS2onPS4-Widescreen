apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Simpsons - Hit & Run (NTSC-U)
--comment=Widescreen hack by ElHecht

-- 16:9 ver
eeObj.WriteMem32(0x00138a88,0x00000000)
eeObj.WriteMem32(0x0014b360,0x00000000)
eeObj.WriteMem32(0x0014b364,0x00000000)
eeObj.WriteMem32(0x002a0b38,0x00000000)
eeObj.WriteMem32(0x0031c888,0x00000000)
eeObj.WriteMem32(0x0031d674,0x00000000)
end

emuObj.AddVsyncHook(widescreen)