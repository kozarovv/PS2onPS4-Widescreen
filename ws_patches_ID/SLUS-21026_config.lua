apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Battlefield 2: Modern Combat (SLUS-21026)
--comment=Widescreen hack by Nemesis

eeObj.WriteMem32(0x0022d4b0,0x3c013fab)
eeObj.WriteMem32(0x0022d8e8,0x3c013fab)
eeObj.WriteMem32(0x003bf5c0,0x3c013f40)
eeObj.WriteMem32(0x003bf5d0,0x4481f000)
eeObj.WriteMem32(0x003bf69c,0x461e0303)
eeObj.WriteMem32(0x003bfd88,0x461e0303)
eeObj.WriteMem32(0x0040b4fc,0x461e0303)

eeObj.WriteMem32(0x0027C1C8,0x24020002)

--vert- widescreen correction
eeObj.WriteMem32(0x0022d490,0x3c013fab)
eeObj.WriteMem32(0x0022d8c8,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)