apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00334870,0x0815d808)

eeObj.WriteMem32(0x00576020,0x3c013f40)
eeObj.WriteMem32(0x00576024,0x4481f000)
eeObj.WriteMem32(0x00576028,0xc6010068)
eeObj.WriteMem32(0x0057602c,0xc602006c)
eeObj.WriteMem32(0x00576030,0x461e0843)
eeObj.WriteMem32(0x00576034,0xe6010068)
eeObj.WriteMem32(0x00576038,0x080cd21e)
end

emuObj.AddVsyncHook(widescreen)