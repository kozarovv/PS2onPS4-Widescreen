apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x00384384,0x3c043f24)
eeObj.WriteMem32(0x003843bc,0x46010003)

--HUD fix
eeObj.WriteMem32(0x0038cd88,0x3c023f24)
eeObj.WriteMem32(0x0038cdc0,0x46010842)
eeObj.WriteMem32(0x0038cdc8,0x46010903)
end

emuObj.AddVsyncHook(widescreen)