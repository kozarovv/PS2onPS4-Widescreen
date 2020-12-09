apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Generation of Chaos III - Toki no Fuuin (Limited Edition) (J)(SLPM-65278)(SLPM-65279)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00103078,0x3c013fab)

--Y-Fov
eeObj.WriteMem32(0x001364e4,0x3c023fc0)
end

emuObj.AddVsyncHook(widescreen)