apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Pop Star Academy (E)(SLES-52062)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002d65a0,0x08030000)
eeObj.WriteMem32(0x002d65a4,0x00000000)

eeObj.WriteMem32(0x000C0000,0x3c013f40)
eeObj.WriteMem32(0x000C0004,0x4481f000)
eeObj.WriteMem32(0x000C0008,0xc6010068)
eeObj.WriteMem32(0x000C000C,0xc602006c)
eeObj.WriteMem32(0x000C0010,0x461e0843)
eeObj.WriteMem32(0x000C0014,0xe6010068)
eeObj.WriteMem32(0x000C0018,0x080b596a)
end

emuObj.AddVsyncHook(widescreen)