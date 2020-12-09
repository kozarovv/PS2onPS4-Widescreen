apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=God Hand (K) (SCKA_20090)
--comment=Widescreen hack by nemesis2000 and Arapapa

--16:9 (6e3f013c efee2134 00288144 5900023c cc5ae6ac)
eeObj.WriteMem32(0x0030fda0,0x3c013f9f)
eeObj.WriteMem32(0x0030fda4,0x342149f1)

--Font fix
--663f013c 66662134 00a08144 (3rd)
eeObj.WriteMem32(0x002afe20,0x3c013f2c)
eeObj.WriteMem32(0x002afe24,0x3421cccd)

--eeObj.WriteMem32(0x002b2858,0x3c013f2c)
--eeObj.WriteMem32(0x002b285c,0x3421cccd)

--eeObj.WriteMem32(0x002b287c,0x3c013f2c)
--eeObj.WriteMem32(0x002b2880,0x3421cccd)
end

emuObj.AddVsyncHook(widescreen)