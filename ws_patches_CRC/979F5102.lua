apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Star Wars - Jedi Starfighter (E)(SLES-50371)
--comment=Widescreen Hack (PAL by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00126c30,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)