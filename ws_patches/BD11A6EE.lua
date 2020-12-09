apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Chains of Power (K)(SLKA-25291)
--comment=Widescreen hack by nemesis2000 (NTSC-K by Arapapa)

--Widescreen hack 16:9

--Gameplay
eeObj.WriteMem32(0x004f6f00,0x46010082)
eeObj.WriteMem32(0x004f6f04,0xe7a20058)

--Cutscenes
eeObj.WriteMem32(0x004f72d0,0x46010082)
eeObj.WriteMem32(0x004f72d4,0xe7a20068)
end

emuObj.AddVsyncHook(widescreen)