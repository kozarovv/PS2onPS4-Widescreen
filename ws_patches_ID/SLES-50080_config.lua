apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NBA Hoopz (E)(SLES-50080)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--82080146 803f013c
eeObj.WriteMem32(0x0013cf00,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46010882)
eeObj.WriteMem32(0x000c0004,0x3c013f00)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e1082)
eeObj.WriteMem32(0x000c0010,0x0804f3c1)
end

emuObj.AddVsyncHook(widescreen)