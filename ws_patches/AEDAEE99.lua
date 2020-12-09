apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=God Hand (J) (SLPM_66550)
--comment=Widescreen hack by nemesis2000 and Arapapa

--16:9 (6e3f013c efee2134 00288144 3c00073c)
eeObj.WriteMem32(0x0030afe0,0x3c013f9f)
eeObj.WriteMem32(0x0030afe4,0x342149f1)

--Font fix
--eeObj.WriteMem32(0x002aedfc,0x3c013f40)
--eeObj.WriteMem32(0x002afdd0,0x3c013f40)
eeObj.WriteMem32(0x002b17e8,0x3c013f2c)
eeObj.WriteMem32(0x002b17ec,0x3421cccd)
end

emuObj.AddVsyncHook(widescreen)