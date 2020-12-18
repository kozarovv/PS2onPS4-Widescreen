apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Fairly OddParents! Shadow Showdown (U)(SLUS-20880)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02631646 540014c6
eeObj.WriteMem32(0x00381f44,0x080f8a54)

eeObj.WriteMem32(0x003e2950,0x46166302)
eeObj.WriteMem32(0x003e2954,0x3c013faa)
eeObj.WriteMem32(0x003e2958,0x3421aaab)
eeObj.WriteMem32(0x003e295c,0x4481f000)
eeObj.WriteMem32(0x003e2960,0x461e6302)
eeObj.WriteMem32(0x003e2964,0x080e07d2)
end

emuObj.AddVsyncHook(widescreen)