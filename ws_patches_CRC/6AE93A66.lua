apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--Gameplay
--2044023c 60088046
eeObj.WriteMem32(0x0013a59c,0x44910800)
eeObj.WriteMem32(0x0013a5a0,0x3c024455)
eeObj.WriteMem32(0x0013a5a4,0x34425555)
end

emuObj.AddVsyncHook(widescreen)