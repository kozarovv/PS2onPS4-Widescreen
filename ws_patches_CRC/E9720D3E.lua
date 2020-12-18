apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Bard's Tale (SLUS-20803)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
--comment=Font fix by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0011c594,0x3c023f40)
eeObj.WriteMem32(0x0012ed8c,0x3c033f40)
eeObj.WriteMem32(0x001447a8,0x3c053f40)
eeObj.WriteMem32(0x00144824,0x3c033f40)
eeObj.WriteMem32(0x00144874,0x3c023f40)

--render fix
eeObj.WriteMem32(0x0013e080,0x3c023f2b)

--font fix 
eeObj.WriteMem32(0x0010ec24,0x3c0341c0)
end

emuObj.AddVsyncHook(widescreen)