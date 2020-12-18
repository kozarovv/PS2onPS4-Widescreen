apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Street Warrior (E)(SLES-54675)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002dd1e8,0x43c00000)

end

emuObj.AddVsyncHook(widescreen)