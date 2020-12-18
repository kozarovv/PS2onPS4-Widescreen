apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht ported by PsxFan107

-- 16:9
eeObj.WriteMem32(0x00212358,0x3c013f40)

-- 16:10
--eeObj.WriteMem32(0x00212358,0x3c013f55)
--eeObj.WriteMem32(0x00212388,0x34215555)

-- cut-scenes black bar removal
eeObj.WriteMem32(0x001ffc38,0x3c030000)

-- 16:9 and 16:10 main modfication
-- no need to change anything here! all modifications are calculated
-- based on the hor fov value in the upper 16:9/16:10 section
eeObj.WriteMem32(0x00212398,0x4481f000)
eeObj.WriteMem32(0x002123b0,0x46001003)
eeObj.WriteMem32(0x002123b4,0x461e0742)
eeObj.WriteMem32(0x002123c8,0x461e0703)
eeObj.WriteMem32(0x002123cc,0x44820000)
eeObj.WriteMem32(0x00212310,0x3c023fb6)
eeObj.WriteMem32(0x00212318,0x3444db6e)
eeObj.WriteMem32(0x0021231c,0x44846000)
eeObj.WriteMem32(0x00212338,0x461e6303)
eeObj.WriteMem32(0x0021248c,0x3c023fb6)
eeObj.WriteMem32(0x00212494,0x3444db6e)
eeObj.WriteMem32(0x00212498,0x44846000)
eeObj.WriteMem32(0x002124b4,0x461e6303)
eeObj.WriteMem32(0x00212c0c,0x461e0843)
eeObj.WriteMem32(0x002008b4,0x4601e042)
eeObj.WriteMem32(0x0020d564,0x461d0803)
eeObj.WriteMem32(0x001aedb8,0x3c083f80)
eeObj.WriteMem32(0x001aedbc,0x44882000)
eeObj.WriteMem32(0x001aedc0,0x46002103)
eeObj.WriteMem32(0x001aedc4,0x461e26c3)
eeObj.WriteMem32(0x001aedc8,0x461b0842)
end

emuObj.AddVsyncHook(widescreen)