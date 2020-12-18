apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x00183124,0x3c023f24)
eeObj.WriteMem32(0x00183128,0x34428b44)
eeObj.WriteMem32(0x0018314c,0x3c023f40)
eeObj.WriteMem32(0x00183100,0x3c014280)
eeObj.WriteMem32(0x0018310c,0x44815800)
eeObj.WriteMem32(0x002e1b40,0xe48b0070)
end

emuObj.AddVsyncHook(widescreen)