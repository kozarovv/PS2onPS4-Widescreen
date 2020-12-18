apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Vampire Night (PAL-M5) (SCES-50411)
--comment=Widescreen Hack by ElHecht

-- 16:9 
eeObj.WriteMem32(0x002147e0,0x3c013f40)

-- 16:10 
--eeObj.WriteMem32(0x002147e0,0x3c013f55)
--eeObj.WriteMem32(0x00214800,0x34215555)

-- cut-scenes black bar removal
eeObj.WriteMem32(0x002027a8,0x3c030000)

-- 16:9 and 16:10 main modifications
-- no need to change anything here! all modifications are calculated
-- based on the hor fov value in the upper 16:9/16:10 section
eeObj.WriteMem32(0x00214810,0x4481f000)
eeObj.WriteMem32(0x00214828,0x46001003)
eeObj.WriteMem32(0x0021482c,0x461e0742)
eeObj.WriteMem32(0x00214840,0x461e0703)
eeObj.WriteMem32(0x00214844,0x44820000)
eeObj.WriteMem32(0x00214798,0x3c023fb6)
eeObj.WriteMem32(0x002147a0,0x3442db6e)
eeObj.WriteMem32(0x002147a4,0x44826000)
eeObj.WriteMem32(0x002147ac,0x461e6303)
eeObj.WriteMem32(0x002148f8,0x3c023fb6)
eeObj.WriteMem32(0x00214900,0x3442db6e)
eeObj.WriteMem32(0x00214904,0x44826000)
eeObj.WriteMem32(0x0021490c,0x461e6303)
eeObj.WriteMem32(0x0021506c,0x461e0843)
eeObj.WriteMem32(0x00203434,0x4601e042)
eeObj.WriteMem32(0x0020fb8c,0x461d0803)
eeObj.WriteMem32(0x001afa48,0x3c083f80)
eeObj.WriteMem32(0x001afa4c,0x44882000)
eeObj.WriteMem32(0x001afa50,0x46002103)
eeObj.WriteMem32(0x001afa54,0x461e26c3)
eeObj.WriteMem32(0x001afa58,0x461b0842)

end

emuObj.AddVsyncHook(widescreen)