apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ben Hur - Blood of Braves (E)(SLES-51350)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9
--X-Fov
eeObj.WriteMem32(0x00368560,0x080ea4a4)

eeObj.WriteMem32(0x003a9290,0x46001503)
eeObj.WriteMem32(0x003a9294,0x3c013f19)
eeObj.WriteMem32(0x003a9298,0x3421aaab)
eeObj.WriteMem32(0x003a929c,0x4481f000)
eeObj.WriteMem32(0x003a92a0,0x461ea502)
eeObj.WriteMem32(0x003a92a4,0x080da159)

--Zoom
--eeObj.WriteMem32(0x00368538,0x3c033fc0)
end

emuObj.AddVsyncHook(widescreen)