apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shaman King - Funbari Spirits [NTSC-J] (SLPS-25359)
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x001038cc,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)