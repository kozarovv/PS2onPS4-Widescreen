apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x0012f928,0x3c0142ab)
eeObj.WriteMem32(0x0012f92c,0x3421e328)
eeObj.WriteMem32(0x001302dc,0x3c0142ab)
eeObj.WriteMem32(0x001302e0,0x3421e328)
eeObj.WriteMem32(0x0012f6d8,0x3c0141e9)
eeObj.WriteMem32(0x0012f724,0x3c0142d5)

--old patch
--eeObj.WriteMem32(0x00170710,0x3c0142d4)
--eeObj.WriteMem32(0x00170714,0x44816000)
--eeObj.WriteMem32(0x00170718,0x461405c2)
--eeObj.WriteMem32(0x0017071c,0x0c07eb82)
--eeObj.WriteMem32(0x00170720,0x46156302)
--eeObj.WriteMem32(0x00170724,0x4614c041)
--eeObj.WriteMem32(0x00170728,0x3c013f00)
--eeObj.WriteMem32(0x0017072c,0x4481a800)
--eeObj.WriteMem32(0x00170730,0x46140002)
--eeObj.WriteMem32(0x00170734,0x460c6583)

--eeObj.WriteMem32(0x00170800,0x3c013c0f)
--eeObj.WriteMem32(0x00170804,0x4481a800)
--eeObj.WriteMem32(0x00170808,0x3c0142d4)
--eeObj.WriteMem32(0x0017080c,0x44810000)
end

emuObj.AddVsyncHook(widescreen)