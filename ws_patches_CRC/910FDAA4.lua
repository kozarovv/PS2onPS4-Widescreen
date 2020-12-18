apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Nicktoons - Attack of the Toybots (U)(SLUS-21605)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--403f013c 00608144 a8a80c0c
eeObj.WriteMem32(0x0012a818,0x3c013f80)

--Y-Fov
eeObj.WriteMem32(0x00276ff0,0x08030000)
eeObj.WriteMem32(0x000c0000,0x3c013f40)
eeObj.WriteMem32(0x000c0004,0x4481f000)
eeObj.WriteMem32(0x000c0008,0x461e0f83)
eeObj.WriteMem32(0x000c000c,0xe7be000c)
eeObj.WriteMem32(0x000c0010,0x0809dbfd)
end

emuObj.AddVsyncHook(widescreen)