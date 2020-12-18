apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Mummy Returns (E)(SLES-50510)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--640015c6 58000cc6
eeObj.WriteMem32(0x001f9a94,0x08030000)

eeObj.WriteMem32(0x000c0000,0xc6150064)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461ead42)
eeObj.WriteMem32(0x000c0010,0x0807e6a6)
end

emuObj.AddVsyncHook(widescreen)