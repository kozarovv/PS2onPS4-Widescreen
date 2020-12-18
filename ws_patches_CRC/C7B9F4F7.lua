apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Eternal Ring (U)(SLUS-20015)
--comment=Widescreen Hack by Arapapa

--X-Fov - ELF hack
--803f013c 00a88144 0045013c
eeObj.WriteMem32(0x00100fcc,0x3c013f40)

--Memory hack
--eeObj.WriteMem32(0x001FF100,0x43c00000)
end

emuObj.AddVsyncHook(widescreen)