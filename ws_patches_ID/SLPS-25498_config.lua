apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jikuu Bouken Zentrix (J)(SLPS-25498)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00223ad8,0x3c023f20)

--Y-Fov
--eeObj.WriteMem32(0x00223aac,0x3c013f40)
--eeObj.WriteMem32(0x00223ab0,0x4481f000)
--eeObj.WriteMem32(0x00223ab8,0x461e6302)
end

emuObj.AddVsyncHook(widescreen)