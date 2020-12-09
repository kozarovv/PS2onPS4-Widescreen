apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--X-Fov - ELF hack
--803f013c 00108144 0c00438e
eeObj.WriteMem32(0x002b52e0,0x3c013f40)

--Memory Hack
--eeObj.WriteMem32(0x00817074,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)