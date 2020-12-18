apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MLB Power Pros (U)(SLUS-21671)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--Gameplay

eeObj.WriteMem32(0x00139f9c,0x44910800)
eeObj.WriteMem32(0x00139fa0,0x3c024455)
eeObj.WriteMem32(0x00139fa4,0x34425555)
end

emuObj.AddVsyncHook(widescreen)