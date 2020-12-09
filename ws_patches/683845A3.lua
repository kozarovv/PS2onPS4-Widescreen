apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9


--X-Fov
--02210846 0000a4e7 040063c4 (1st)
eeObj.WriteMem32(0x0026f1fc,0x080b6598)

eeObj.WriteMem32(0x002d9660,0x46082102)
eeObj.WriteMem32(0x002d9664,0x3c013f40)
eeObj.WriteMem32(0x002d9668,0x4481f000)
eeObj.WriteMem32(0x002d966c,0x461e2102)
eeObj.WriteMem32(0x002d9670,0x0809bc80)
end

emuObj.AddVsyncHook(widescreen)