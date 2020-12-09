apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen correction by nemesis2000 (pnach by nemesis2000 )
--gameplay

--val1
eeObj.WriteMem32(0x00151420,0x3c033f19)
eeObj.WriteMem32(0x00151428,0x34639999)

--val2
eeObj.WriteMem32(0x00151480,0x3c033f4c)
eeObj.WriteMem32(0x00151484,0x34439999)

--val3
eeObj.WriteMem32(0x001515d8,0x3c033f19)
eeObj.WriteMem32(0x001515e0,0x34639999)

--rfix1
eeObj.WriteMem32(0x00151650,0x3c02c3d6)

--rfix2
eeObj.WriteMem32(0x00151540,0x3c024527)
end

emuObj.AddVsyncHook(widescreen)