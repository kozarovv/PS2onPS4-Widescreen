apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02a51946 b00006e6
eeObj.WriteMem32(0x0011a80c,0x08030000)
eeObj.WriteMem32(0x000c0000,0x4619a502)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461ea502)
eeObj.WriteMem32(0x000c0010,0x08046a04)
end

emuObj.AddVsyncHook(widescreen)