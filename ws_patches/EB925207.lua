apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Magna Carta [NTSC-J] (SLPM-25401)
--comment=Widescreen hack by Little Giant

eeObj.WriteMem32(0x002bd898,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)