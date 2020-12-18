apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wild Arms 3 (J) (SCPS_150.24) 
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

--towns and maps
eeObj.WriteMem32(0x00115c90,0x3c023f40)
eeObj.WriteMem32(0x00115ca0,0x3c023f40)

--render fix
eeObj.WriteMem32(0x00115e4c,0x3c054455)

--battles
eeObj.WriteMem32(0x00115a74,0x3c023f40)

--render fix
eeObj.WriteMem32(0x00115ae8,0x3c024455)
end

emuObj.AddVsyncHook(widescreen)