apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Incredibles [NTSC-U] (SLUS_209.05)
--comment=Widescreen hack by Sergx12 

--Gameplay 16:9
eeObj.WriteMem32(0x001fe8e4,0x3c023f1C)
eeObj.WriteMem32(0x001fe910,0x3c023f10)

--Hang fix by Prafull (Only needed for pcsx2, is not needed for the PS2)
--eeObj.WriteMem32(0x0010EC20,0x00000000)
end

emuObj.AddVsyncHook(widescreen)