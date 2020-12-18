apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=B-Boy (U)(SLUS-21761)
--comment=Widescreen hack by Arapapa

--Wide Screen 16:9

--Zoom
--003f013c 00008144 0000bfff 8e3c013c (1st)
eeObj.WriteMem32(0x00215a6c,0x3c013ec7)

--Y-Fov
eeObj.WriteMem32(0x002c21b0,0x080a38dc)
eeObj.WriteMem32(0x0028e370,0x3c013f40)
eeObj.WriteMem32(0x0028e374,0x4481f000)
eeObj.WriteMem32(0x0028e378,0xc6010068)
eeObj.WriteMem32(0x0028e37c,0xc602006c)
eeObj.WriteMem32(0x0028e380,0x461e0843)
eeObj.WriteMem32(0x0028e384,0xe6010068)
eeObj.WriteMem32(0x0028e388,0x080b086d)
end

emuObj.AddVsyncHook(widescreen)