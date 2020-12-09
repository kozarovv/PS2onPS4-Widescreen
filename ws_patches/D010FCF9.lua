apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tales of Destiny 2 (NTSC-K)(SCKA-20008)
--comment=Widescreen hack (NTSC-K by Arapapa)

--battle
eeObj.WriteMem32(0x00181124,0x3c013f40)
eeObj.WriteMem32(0x00181128,0x44810000)
eeObj.WriteMem32(0x00181130,0x4600c602)

--3D map
--00004844 00000000 00000000 00000000 00000000 ffffbb43
eeObj.WriteMem32(0x002d8e60,0x44160000)

--No interlacing by asasega
--38290500 08004264 -> 38290500 00000000
eeObj.WriteMem32(0x00171094,0x00000000)
eeObj.WriteMem32(0x0017111c,0x00000000)
end

emuObj.AddVsyncHook(widescreen)