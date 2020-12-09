apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Soldier of Fortune - Gold Edition (U)(SLUS-20084)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--83100746 2400a4e7
eeObj.WriteMem32(0x0041c540,0x3c013f40)
eeObj.WriteMem32(0x0041c548,0x4481f000)
eeObj.WriteMem32(0x0041c54c,0x46071083)
eeObj.WriteMem32(0x0041c550,0x461e1082)

--Render fix
--003f013c 00a88144 002c1026
eeObj.WriteMem32(0x003f5f54,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)