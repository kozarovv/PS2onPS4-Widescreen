apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001adae8,0x08048174)
eeObj.WriteMem32(0x001adaec,0x00000000)

eeObj.WriteMem32(0x001205d0,0x3c013f40)
eeObj.WriteMem32(0x001205d4,0x4481f000)
eeObj.WriteMem32(0x001205d8,0xc6010068)
eeObj.WriteMem32(0x001205dc,0xc602006c)
eeObj.WriteMem32(0x001205e0,0x461e0843)
eeObj.WriteMem32(0x001205e4,0xe6010068)
eeObj.WriteMem32(0x001205e8,0x0806b6bc)
end

emuObj.AddVsyncHook(widescreen)