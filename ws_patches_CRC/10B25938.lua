apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00131b6c,0x3c013f40)
eeObj.WriteMem32(0x00131b70,0x4481f000)
eeObj.WriteMem32(0x00131a3c,0x461ead42)
end

emuObj.AddVsyncHook(widescreen)