apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=World Destruction League - Thunder Tanks (U)(SLUS-20005)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x001ad4a4,0x3c013ed2)

--Y-Fov
eeObj.WriteMem32(0x001ad398,0x08030000)
eeObj.WriteMem32(0x000c0000,0x46020002)
eeObj.WriteMem32(0x000c0004,0x3c1b3f40)
eeObj.WriteMem32(0x000c0008,0x449bf000)
eeObj.WriteMem32(0x000c000c,0x461e0003)
eeObj.WriteMem32(0x000c0010,0x0806b4e7)
end

emuObj.AddVsyncHook(widescreen)