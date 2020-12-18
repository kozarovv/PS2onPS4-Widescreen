apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Smarties - Meltdown (E)(SLES-53940)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001fe818,0x08030000)
eeObj.WriteMem32(0x000c0000,0x3c013f40)
eeObj.WriteMem32(0x000c0004,0x4481f000)
eeObj.WriteMem32(0x000c0008,0xc6010068)
eeObj.WriteMem32(0x000c000c,0xc602006c)
eeObj.WriteMem32(0x000c0010,0x461e0843)
eeObj.WriteMem32(0x000c0014,0xe6010068)
eeObj.WriteMem32(0x000c0018,0x0807fa08)

end

emuObj.AddVsyncHook(widescreen)