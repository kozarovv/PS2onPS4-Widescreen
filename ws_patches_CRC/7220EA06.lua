apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x00ede2c8,0x084101b4)
eeObj.WriteMem32(0x010406d0,0x3c013f40)
eeObj.WriteMem32(0x010406d4,0x4481f000)
eeObj.WriteMem32(0x010406d8,0xc6010068)
eeObj.WriteMem32(0x010406dc,0xc602006c)
eeObj.WriteMem32(0x010406e0,0x461e0843)
eeObj.WriteMem32(0x010406e4,0xe6010068)
eeObj.WriteMem32(0x010406e8,0x083b78b4)
end

emuObj.AddVsyncHook(widescreen)