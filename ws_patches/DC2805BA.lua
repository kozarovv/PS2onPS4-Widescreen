apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Robot Wars - Arenas of Destruction (E)(SLES-50572)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00191058,0x3c013f2a)

--Y-Fov
eeObj.WriteMem32(0x00191090,0x08030000)

eeObj.WriteMem32(0x000c0000,0x4616a583)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x00000000)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461eb582)
eeObj.WriteMem32(0x000c0014,0x08064425)
end

emuObj.AddVsyncHook(widescreen)