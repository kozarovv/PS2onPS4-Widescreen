apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00363598,0x080f6114)

eeObj.WriteMem32(0x003d8450,0x46010043)
eeObj.WriteMem32(0x003d8454,0x3c013f40)
eeObj.WriteMem32(0x003d8458,0x4481f000)
eeObj.WriteMem32(0x003d845c,0x461e0842)
eeObj.WriteMem32(0x003d8460,0x080d8d67)

--Render fix
eeObj.WriteMem32(0x002a4014,0x3c0140ab)
end

emuObj.AddVsyncHook(widescreen)