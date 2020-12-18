apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= Rule of Rose SLUS 214.48
--comment=Widescreen Hack
eeObj.WriteMem32(0x0013bd54,0x3c013f12)
eeObj.WriteMem32(0x0013bd7c,0x3c013f10)

--Jennifer runs faster (don't move in attack stance)
--eeObj.WriteMem32(0x002EA740,0x3FAAAAAA)
--eeObj.WriteMem32(0x002EA744,0x3FAAAAAA)

--Lower pitch BGM
--eeObj.WriteMem32(0x007B297C,0x3F666666)
--Higher pitch BGM
--eeObj.WriteMem32(0x007B297C,0x3F8CCCCD)

--Draw distance
--eeObj.WriteMem32(0x00302418,0x00000000)

--noise off
eeObj.WriteMem32(0x0073D6A0,0x00000000)

--noise off (alternate address)
--eeObj.WriteMem32(0x001c9cec,0xe43f1fa0)

--black borders's fix
eeObj.WriteMem32(0x00190e58,0x24050000)

--Camera distance = 203035B0
end

emuObj.AddVsyncHook(widescreen)