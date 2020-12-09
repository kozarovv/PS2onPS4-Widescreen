apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=King of Colosseum II (J)(SLPM-65602)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00293400,0x3c013fab)

--Y-Fov
eeObj.WriteMem32(0x00293554,0x3c0140ab)
end

emuObj.AddVsyncHook(widescreen)