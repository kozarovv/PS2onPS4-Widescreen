apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Momotarou Dentetsu 12 - Nishinihon Hen mo ari Masse! (J)(SLPM-62416)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002baef0,0x080c9784)

eeObj.WriteMem32(0x00325e10,0x3c013f40)
eeObj.WriteMem32(0x00325e14,0x4481f000)
eeObj.WriteMem32(0x00325e18,0x461e6b42)
eeObj.WriteMem32(0x00325e1c,0x080aebbd)

--Zoom
--eeObj.WriteMem32(0x002c6670,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)