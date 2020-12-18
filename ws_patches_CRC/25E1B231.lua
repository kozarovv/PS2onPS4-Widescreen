apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov - ELF hack
--803f013c 00688144
eeObj.WriteMem32(0x00100fa0,0x3c013f40)

--Memory hack
--eeObj.WriteMem32(0x001EDC40,0x43C00000)
end

emuObj.AddVsyncHook(widescreen)