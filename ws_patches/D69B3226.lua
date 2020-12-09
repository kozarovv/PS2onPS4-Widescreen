apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=E.O.E - Houkai no Zenya (J)(SLPS-25115)
--comment=Widescreen Hack (pnach by Arapapa)


--/X-Fov
eeObj.WriteMem32(0x001553e4,0x3c023ec0)
end

emuObj.AddVsyncHook(widescreen)