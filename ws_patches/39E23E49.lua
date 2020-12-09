apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02031546 2d808000
eeObj.WriteMem32(0x001e6ad8,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46150302)
eeObj.WriteMem32(0x000c0004,0x3c013faa)
eeObj.WriteMem32(0x000c0008,0x3421aaab)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461e6302)
eeObj.WriteMem32(0x000c0014,0x08079ab7)
end

emuObj.AddVsyncHook(widescreen)