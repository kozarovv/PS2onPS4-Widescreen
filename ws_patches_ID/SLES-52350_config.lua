apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=International Golf Pro (E)(SLES-52350)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00215518,0x0809b424)
eeObj.WriteMem32(0x0021551c,0x00000000)

eeObj.WriteMem32(0x0026d090,0x3c013f40)
eeObj.WriteMem32(0x0026d094,0x4481f000)
eeObj.WriteMem32(0x0026d098,0xc6010068)
eeObj.WriteMem32(0x0026d09c,0xc602006c)
eeObj.WriteMem32(0x0026d0a0,0x461e0843)
eeObj.WriteMem32(0x0026d0a4,0xe6010068)
eeObj.WriteMem32(0x0026d0a8,0x08085548)
end

emuObj.AddVsyncHook(widescreen)