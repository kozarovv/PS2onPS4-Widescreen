apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Gameplay 16:9

--2044013c 00088144 00000000 03000146 (1st)
eeObj.WriteMem32(0x001112a4,0x3c014455)

--Render Fix
--2044013c 00088144 00000000 03000146 (2nd)
eeObj.WriteMem32(0x00111464,0x3c014455)
end

emuObj.AddVsyncHook(widescreen)