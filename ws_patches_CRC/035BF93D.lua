apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001f9794,0x08030000)

eeObj.WriteMem32(0x000c0000,0xc6150064)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461ead42)
eeObj.WriteMem32(0x000c0010,0x0807e5e6)
end

emuObj.AddVsyncHook(widescreen)