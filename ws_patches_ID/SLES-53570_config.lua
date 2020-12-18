apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ninjabread Man (E)(SLES-53570)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002a8ac0,0x0809d466)
eeObj.WriteMem32(0x002a8ac4,0x00000000)

eeObj.WriteMem32(0x00275198,0x3c013f40)
eeObj.WriteMem32(0x0027519c,0x4481f000)
eeObj.WriteMem32(0x002751a0,0xc6010068)
eeObj.WriteMem32(0x002751a4,0xc602006c)
eeObj.WriteMem32(0x002751a8,0x461e0843)
eeObj.WriteMem32(0x002751ac,0xe6010068)
eeObj.WriteMem32(0x002751b0,0x080aa2b2)
end

emuObj.AddVsyncHook(widescreen)