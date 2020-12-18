apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (NTSC-K by Arapapa)

--388880c7 003f013c 00608144
--388880c7 223f013c 00608144
eeObj.WriteMem32(0x0029cf70,0x3c013f22)

--d48680c7 003f013c 00b88144
--d48680c7 223f013c 00b88144
eeObj.WriteMem32(0x002210e4,0x3c013f22)

--00 00 20 44 00 00 E0 43 80 02 00 00 C0 01 00 00 0A 00 00 00 02 00 00 00 46 00 00 00 80 02 00 00
eeObj.WriteMem32(0x0056CA30,0x44550000)
end

emuObj.AddVsyncHook(widescreen)