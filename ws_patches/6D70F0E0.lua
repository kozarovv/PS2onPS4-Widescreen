apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x002a8c40,0x0809d4c8)
eeObj.WriteMem32(0x00275320,0x3c013f40)
eeObj.WriteMem32(0x00275324,0x4481f000)
eeObj.WriteMem32(0x00275328,0xc6010068)
eeObj.WriteMem32(0x0027532c,0xc602006c)
eeObj.WriteMem32(0x00275330,0x461e0843)
eeObj.WriteMem32(0x00275334,0xe6010068)
eeObj.WriteMem32(0x00275338,0x080aa312)
end

emuObj.AddVsyncHook(widescreen)