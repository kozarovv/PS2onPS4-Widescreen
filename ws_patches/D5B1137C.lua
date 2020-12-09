apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Stunt GP [NTSC-U] [D5B1137C]
--comment=Widescreen hack by LRukyk

--Master Code
eeObj.WriteMem32(0x002A3254,0x0C0ACE0D)

--Widescreen Singleplayer
eeObj.WriteMem32(0x00591930,0x3FE38E3B)

--Widescreen Multiplayer
eeObj.WriteMem32(0x0059192C,0x3FE38E3B)
end

emuObj.AddVsyncHook(widescreen)