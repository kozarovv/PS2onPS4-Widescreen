apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Inuyasha - Feudal Combat [NTSC-U] (SLUS-21193)
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x0011ff98,0x3c013fdc)
eeObj.WriteMem32(0x0011ff9c,0x34211ade)

eeObj.WriteMem32(0x00121a90,0x3c013fdc)
eeObj.WriteMem32(0x00121a94,0x34211ade)

eeObj.WriteMem32(0x001224a0,0x3c013fdc)
eeObj.WriteMem32(0x001224a4,0x34211ade)
end

emuObj.AddVsyncHook(widescreen)