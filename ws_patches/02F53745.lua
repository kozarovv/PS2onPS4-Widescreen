apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov (Memory Hack)
eeObj.WriteMem32(0x0026EDD0,0x3f400000)

--Text Box (Elf hack)
eeObj.WriteMem32(0x00149e4c,0x3c02bf40)
end

emuObj.AddVsyncHook(widescreen)