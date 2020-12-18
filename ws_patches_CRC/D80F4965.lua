apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kujibibi Unbalance (NTSC-J)(SLPS-25729)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Game play
--0000f043 eeee6e3f 0000e043
eeObj.WriteMem32(0x002156b0,0x44200000)

--2D Screen adjust   ** Need a render fix **
--eeObj.WriteMem32(0x002155cc,0x44350000)
--eeObj.WriteMem32(0x002155e4,0x44100000)
end

emuObj.AddVsyncHook(widescreen)