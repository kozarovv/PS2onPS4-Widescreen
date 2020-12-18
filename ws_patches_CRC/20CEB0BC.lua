apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x00381454,0x3c043f24)
eeObj.WriteMem32(0x0038148c,0x46010003)

--HUD fix
eeObj.WriteMem32(0x00389fa8,0x3c023f24)
eeObj.WriteMem32(0x00389fe0,0x46010842)
eeObj.WriteMem32(0x00389fe8,0x46010903)
end

emuObj.AddVsyncHook(widescreen)