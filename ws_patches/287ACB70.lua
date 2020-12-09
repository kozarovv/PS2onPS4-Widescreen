apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--Gameplay
--2044023c 60088046
eeObj.WriteMem32(0x00139b1c,0x44910800)
eeObj.WriteMem32(0x00139b20,0x3c024455)
eeObj.WriteMem32(0x00139b24,0x34425555)
end

emuObj.AddVsyncHook(widescreen)