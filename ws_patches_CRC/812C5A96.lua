apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen correction by nemesis2000 (pnach by nemesis2000 )

--gameplay

--val1
eeObj.WriteMem32(0x0012f974,0x3c023f19)
eeObj.WriteMem32(0x0012f978,0x34439999)

--val2
eeObj.WriteMem32(0x0012fb64,0x3c033f19)
eeObj.WriteMem32(0x0012fb6c,0x33463999)

--val3
eeObj.WriteMem32(0x0012f960,0x3c023f19)
eeObj.WriteMem32(0x0012f968,0x34439999)

--rfix1
eeObj.WriteMem32(0x0012fbe4,0x3c02c3d6)

--rfix2
eeObj.WriteMem32(0x0012facc,0x3c024527)
end

emuObj.AddVsyncHook(widescreen)