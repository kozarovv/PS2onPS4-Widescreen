apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Matrix hack
eeObj.WriteMem32(0x0024b1ac,0x3c013f40)
eeObj.WriteMem32(0x0024b1b0,0x44810000)
eeObj.WriteMem32(0x0024b1b8,0x4600c602)

--Render fix
--a043013c 00208144 4000b5e7
eeObj.WriteMem32(0x0014b23c,0x3c0143e0)
end

emuObj.AddVsyncHook(widescreen)