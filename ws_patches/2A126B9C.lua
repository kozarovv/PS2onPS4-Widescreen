apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--82310946 0800a8df
eeObj.WriteMem32(0x001128b8,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46093182)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e3182)
eeObj.WriteMem32(0x000c0010,0x08044a2f)
end

emuObj.AddVsyncHook(widescreen)