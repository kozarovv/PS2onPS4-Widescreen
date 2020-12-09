apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Robotech - Battlecry (U)(SLUS-20244)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00122214,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)