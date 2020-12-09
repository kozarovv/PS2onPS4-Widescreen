apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mercenaries: Playground of Destruction [PAL-M2-Spa-Ita] (SLES_530.08)
--comment=Widescreen Hack by El_Patas

-- 16:9 
eeObj.WriteMem32(0x0033b098,0x3c013f40)

-- 16:10 
--eeObj.WriteMem32(0x0033b098,0x3c013f55)
--eeObj.WriteMem32(0x0033b09c,0x34215555)

-- 16:9 and 16:10 main modifications
-- no need to change anything here! all modifications are calculated
-- based on the hor fov value in the upper 16:9/16:10 section
eeObj.WriteMem32(0x0033b0a0,0x4481f000)
eeObj.WriteMem32(0x0033b940,0x4600f306)
eeObj.WriteMem32(0x0033f7cc,0x461e0843)
eeObj.WriteMem32(0x0033f7d0,0x46010d43)
eeObj.WriteMem32(0x003476b8,0x4600f306)
--eeObj.WriteMem32(0x0033a248,0x0813cbcb)
eeObj.WriteMem32(0x0033a24c,0x00000000)
eeObj.WriteMem32(0x004f40b8,0x46030842)
eeObj.WriteMem32(0x004f40bc,0x46030002)
eeObj.WriteMem32(0x004f40c0,0x461e0002)
eeObj.WriteMem32(0x004f40c4,0x080ce663)
end

emuObj.AddVsyncHook(widescreen)