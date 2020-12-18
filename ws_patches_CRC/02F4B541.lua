apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by nemesis2000 and Arapapa

--Widescreen hack 16:9

--00000000 00000000 83051646 00000000
--403f013c 00008144 83051646 03000046
eeObj.WriteMem32(0x00580784,0x3c013f40)
eeObj.WriteMem32(0x00580788,0x44810000)
eeObj.WriteMem32(0x00580790,0x46000003)

--Render fix
--003f013c 00208144 c2180546
eeObj.WriteMem32(0x00571edc,0x3c013f2b)
--003f013c 00008144 f000b07f
eeObj.WriteMem32(0x005AE6B4,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)