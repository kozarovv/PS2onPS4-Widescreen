apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--X-Fov - ELF hack
--803f013c 00108144 0c00438e
eeObj.WriteMem32(0x002b5118,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)