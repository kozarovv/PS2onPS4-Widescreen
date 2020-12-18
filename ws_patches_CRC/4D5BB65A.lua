apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Sergx12 (NTSC-J by Arpapa)

--Gameplay 16:9
--003f023c 00008244 8e3c033c
eeObj.WriteMem32(0x001ff4b4,0x3c023f1C)
eeObj.WriteMem32(0x001ff4e0,0x3c023f10)

--Hang fix by Prafull (Only needed for pcsx2, is not needed for the PS2)
eeObj.WriteMem32(0x0010EC20,0x00000000)
end

emuObj.AddVsyncHook(widescreen)