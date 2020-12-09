apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mercenaries 2: World in Flames [PAL-Spain] (SLES_550.01)
--comment=Widescreen Hack by El_Patas

-- 16:9
eeObj.WriteMem32(0x0037c350,0x3c013f40)

-- 16:10 
--eeObj.WriteMem32(0x0037c350,0x3c013f55)
--eeObj.WriteMem32(0x0037c354,0x34215555)

-- 16:9 and 16:10 main modifications
-- no need to change anything here! all modifications are calculated
-- based on the hor fov value in the upper 16:9/16:10 section
eeObj.WriteMem32(0x0037c358,0x4481f000)
eeObj.WriteMem32(0x0037cc18,0x4600f306)
eeObj.WriteMem32(0x00380f54,0x461e0843)
eeObj.WriteMem32(0x00380f58,0x46010d43)
eeObj.WriteMem32(0x00389450,0x4600f306)
eeObj.WriteMem32(0x0037b490,0x0813cbcb)
eeObj.WriteMem32(0x0037b494,0x00000000)
eeObj.WriteMem32(0x00556848,0x46030842)
eeObj.WriteMem32(0x0055684c,0x46030002)
eeObj.WriteMem32(0x00556850,0x461e0002)
eeObj.WriteMem32(0x00556854,0x080ce663)
end

emuObj.AddVsyncHook(widescreen)