apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9 
eeObj.WriteMem32(0x0033b038,0x3c013f40)

-- 16:10 
--eeObj.WriteMem32(0x0033b038,0x3c013f55)
--eeObj.WriteMem32(0x0033b03c,0x34215555)

-- 16:9 and 16:10 main modifications
-- no need to change anything here! all modifications are calculated
-- based on the hor fov value in the upper 16:9/16:10 section
eeObj.WriteMem32(0x0033b040,0x4481f000)
eeObj.WriteMem32(0x0033b080,0x4600f306)
eeObj.WriteMem32(0x0033ef0c,0x461e0843)
eeObj.WriteMem32(0x0033ef10,0x46010d43)
eeObj.WriteMem32(0x00346df8,0x4600f306)
eeObj.WriteMem32(0x00339988,0x0813cbcb)
eeObj.WriteMem32(0x0033998c,0x00000000)
eeObj.WriteMem32(0x004f2f38,0x46030842)
eeObj.WriteMem32(0x004f2f3c,0x46030002)
eeObj.WriteMem32(0x004f2f40,0x461e0002)
eeObj.WriteMem32(0x004f2f44,0x080ce663)
end

emuObj.AddVsyncHook(widescreen)