apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--c2080346 080065c4
eeObj.WriteMem32(0x00352fd4,0x080e6234)

eeObj.WriteMem32(0x003988d0,0x460308c2)
eeObj.WriteMem32(0x003988d4,0x3c013f40)
eeObj.WriteMem32(0x003988d8,0x4481f000)
eeObj.WriteMem32(0x003988dc,0x461e18c2)
eeObj.WriteMem32(0x003988e0,0x080d4bf6)
end

emuObj.AddVsyncHook(widescreen)