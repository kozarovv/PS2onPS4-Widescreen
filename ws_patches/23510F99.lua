apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9 
eeObj.WriteMem32(0x0033b0a0,0x3c013f40)

-- 16:10 
--eeObj.WriteMem32(0x0033b0a0,0x3c013f55)
--eeObj.WriteMem32(0x0033b0a4,0x34215555)

-- 16:9 and 16:10 main modifications
-- no need to change anything here! all modifications are calculated
-- based on the hor fov value in the upper 16:9/16:10 section
eeObj.WriteMem32(0x0033b0a8,0x4481f000)
eeObj.WriteMem32(0x0033b0e8,0x4600f306)
eeObj.WriteMem32(0x0033ef74,0x461e0843)
eeObj.WriteMem32(0x0033ef78,0x46010d43)
eeObj.WriteMem32(0x00346e60,0x4600f306)
eeObj.WriteMem32(0x00339a00,0x0813cbee)
eeObj.WriteMem32(0x00339a04,0x00000000)
eeObj.WriteMem32(0x004f2fb8,0x46030842)
eeObj.WriteMem32(0x004f2fbc,0x46030002)
eeObj.WriteMem32(0x004f2fc0,0x461e0002)
eeObj.WriteMem32(0x004f2fc4,0x080ce681)
end

emuObj.AddVsyncHook(widescreen)