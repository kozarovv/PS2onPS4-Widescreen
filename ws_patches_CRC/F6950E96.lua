apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=B-Boy (E)(SCES-53960)
--comment=Widescreen hack by Arapapa

--Wide Screen 16:9

eeObj.WriteMem32(0x00308e5c,0x3c013ec7)

eeObj.WriteMem32(0x001a7478,0x0805ce00)
eeObj.WriteMem32(0x00173800,0x3c013f40)
eeObj.WriteMem32(0x00173804,0x4481f000)
eeObj.WriteMem32(0x00173808,0xc6010068)
eeObj.WriteMem32(0x0017380c,0xc602006c)
eeObj.WriteMem32(0x00173810,0x461e0843)
eeObj.WriteMem32(0x00173814,0xe6010068)
eeObj.WriteMem32(0x00173818,0x08069d20)
end

emuObj.AddVsyncHook(widescreen)