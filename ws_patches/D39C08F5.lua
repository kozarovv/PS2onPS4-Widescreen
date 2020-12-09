apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kinetica (NTSC-U)
--comment=Widescreen hack

eeObj.WriteMem32(0x00172190,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)