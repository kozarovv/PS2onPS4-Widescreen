apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Legaia: Duel Saga  [NTSC-J] (SCPS-15020)
--comment=Widescreen Hack by Little Gaint

eeObj.WriteMem32(0x00220050,0x3c013f40)
eeObj.WriteMem32(0x002200dc,0x3c013f40)
eeObj.WriteMem32(0x00134074,0x3c01c3d5)
eeObj.WriteMem32(0x0013408c,0x3c0143d5)
end

emuObj.AddVsyncHook(widescreen)