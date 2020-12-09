apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by El_Patas (X FOV) and Aced14 (Y FOV)

--Gameplay 16:9
eeObj.WriteMem32(0x002AFBB4,0x00003F40)
eeObj.WriteMem32(0x00110EC4,0x00000150)
end

emuObj.AddVsyncHook(widescreen)