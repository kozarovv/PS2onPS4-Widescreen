apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x004d4058,0x08146448)
eeObj.WriteMem32(0x00519120,0x3c013f40)
eeObj.WriteMem32(0x00519124,0x4481f000)
eeObj.WriteMem32(0x00519128,0xc6010068)
eeObj.WriteMem32(0x0051912c,0xc602006c)
eeObj.WriteMem32(0x00519130,0x461e0843)
eeObj.WriteMem32(0x00519134,0xe6010068)
eeObj.WriteMem32(0x00519138,0x08135018)
end

emuObj.AddVsyncHook(widescreen)