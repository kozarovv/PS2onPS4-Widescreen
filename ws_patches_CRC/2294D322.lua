apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

--hor fov+
eeObj.WriteMem32(0x00153324,0x3C024500)
eeObj.WriteMem32(0x00153388,0x3C023F40)

--render fix
eeObj.WriteMem32(0x001532ac,0x3C02442B)
end

emuObj.AddVsyncHook(widescreen)