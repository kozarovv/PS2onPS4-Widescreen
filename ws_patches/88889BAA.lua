apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--000000e6 4000bfdf 3000b0df
eeObj.WriteMem32(0x001d3e60,0x08030000)

eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0002)
eeObj.WriteMem32(0x000c0010,0xe6000000)
eeObj.WriteMem32(0x000c0014,0x08074f99)
end

emuObj.AddVsyncHook(widescreen)