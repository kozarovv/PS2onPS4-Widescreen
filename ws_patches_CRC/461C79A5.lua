apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (Converted to PAL by Somechump)

eeObj.WriteMem32(0x00170728,0x3c0142d4)
eeObj.WriteMem32(0x0017072c,0x44816000)
eeObj.WriteMem32(0x00170730,0x461405c2)
eeObj.WriteMem32(0x00170734,0x0c07eb92)
eeObj.WriteMem32(0x00170738,0x46156302)
eeObj.WriteMem32(0x0017073c,0x4614c041)
eeObj.WriteMem32(0x00170740,0x3c013f00)
eeObj.WriteMem32(0x00170744,0x4481a800)
eeObj.WriteMem32(0x00170748,0x46140002)
eeObj.WriteMem32(0x0017074c,0x460c6583)

eeObj.WriteMem32(0x00170818,0x3c013c0f)
eeObj.WriteMem32(0x0017081c,0x4481a800)
eeObj.WriteMem32(0x00170820,0x3c0142d4)
eeObj.WriteMem32(0x00170824,0x44810000)
end

emuObj.AddVsyncHook(widescreen)