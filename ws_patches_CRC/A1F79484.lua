apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Battlefield 2 - Mordern Combat (K)(SLKA-25330)
--comment=Widescreen hack by Nemesis (NTSC-K by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x0022d660,0x3c013fab)
eeObj.WriteMem32(0x0022da98,0x3c013fab)
eeObj.WriteMem32(0x003bfad8,0x3c013f40)
eeObj.WriteMem32(0x003bfae8,0x4481f000)
eeObj.WriteMem32(0x003bfbb4,0x461e0303)
eeObj.WriteMem32(0x003c02a0,0x461e0303)
eeObj.WriteMem32(0x0040ba44,0x461e0303)
eeObj.WriteMem32(0x0027c368,0x24020002)
eeObj.WriteMem32(0x0022d640,0x3c013fab)
eeObj.WriteMem32(0x0022da78,0x3c013fab)


end

emuObj.AddVsyncHook(widescreen)