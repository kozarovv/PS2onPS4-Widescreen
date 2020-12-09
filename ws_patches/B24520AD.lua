apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Incredibles (K)(SLKA-25226)
--comment=Widescreen hack by Sergx12 (NTSC-K by Arpapa)

--Gameplay 16:9
--003f023c 00008244 8e3c033c
eeObj.WriteMem32(0x001ff644,0x3c023f1C)
eeObj.WriteMem32(0x001ff670,0x3c023f10)

--Hang fix by Prafull (Only needed for pcsx2, is not needed for the PS2)
--eeObj.WriteMem32(0x0010EC20,0x00000000)
end

emuObj.AddVsyncHook(widescreen)