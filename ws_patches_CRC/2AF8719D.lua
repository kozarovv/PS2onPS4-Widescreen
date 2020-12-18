apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack

--Widescreen hack 16:9

--X-Fov
--700000c6 0400028e (1st)
eeObj.WriteMem32(0x00185c7c,0x08030000)

eeObj.WriteMem32(0x000c0000,0xc6000070)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0002)
eeObj.WriteMem32(0x000c0010,0x08061720)
end

emuObj.AddVsyncHook(widescreen)