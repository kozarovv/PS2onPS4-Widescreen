apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=ESPN NHL 2K5 [PAL] (SLES_529.66)
--comment=Widescreen hack by El_Patas

--Seems to work fine only in the emulator, in the PS2 causes some graphical glitches in some 
--cut-scenes and in the replays when is used the zoom very near to the puck.

--Gameplay 16:9
eeObj.WriteMem32(0x001A30F0,0x3C013FAA)
end

emuObj.AddVsyncHook(widescreen)