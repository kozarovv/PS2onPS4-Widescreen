apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Final Fantasy X (SLUS-20312)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x001a51cc,0x3c013f19)
eeObj.WriteMem32(0x001a51d0,0x3421999a)
eeObj.WriteMem32(0x0011973c,0x3c014440)
eeObj.WriteMem32(0x00175a64,0x3c01442b)

--alternate values
--eeObj.WriteMem32(0x00311340,0x3F34CCCD)
eeObj.WriteMem32(0x00311344,0x3F5EEEEF)

--world map
eeObj.WriteMem32(0x00260538,0x3c013f40)

--sphere grid
eeObj.WriteMem32(0x00261e94,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)