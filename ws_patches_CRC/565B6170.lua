apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

--hor fov+
eeObj.WriteMem32(0x00159430,0x3c064500)
eeObj.WriteMem32(0x001594cc,0x3c023f40)

--render fix
eeObj.WriteMem32(0x001592D4,0x3c05442b)
end

emuObj.AddVsyncHook(widescreen)