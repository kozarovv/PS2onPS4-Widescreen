apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sengoku Basara [NTSC-J] (SLPM-66058)
--comment=Widescreen Hack by Little Giant

--wide 16:9
eeObj.WriteMem32(0x0026470c,0x3c013f40)
eeObj.WriteMem32(0x00264710,0x44810000)
eeObj.WriteMem32(0x00264718,0x4600c602)

--render fix
eeObj.WriteMem32(0x001afdd0,0x3c013f19)
eeObj.WriteMem32(0x001afdd4,0x3421999a)
end

emuObj.AddVsyncHook(widescreen)