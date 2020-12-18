apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Zettaizetsumei Toshi 2 - Itetsuita Kiokutachi [NTSC-J] (SLPS-25606)
--comment=Widescreen Hack by Little Giant

--black borders's fix
eeObj.WriteMem32(0x001CF198,0x00A52823)

--16:9
eeObj.WriteMem32(0x0048ab28,0x3F400000)
eeObj.WriteMem32(0x003a7c60,0x43E00000)
eeObj.WriteMem32(0x003a7c80,0x43E00000)

--16:10
--eeObj.WriteMem32(0x0048ab28,0x3F555555)
--eeObj.WriteMem32(0x003a7c60,0x43C00000)
--eeObj.WriteMem32(0x003a7c80,0x43C00000)
end

emuObj.AddVsyncHook(widescreen)