apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00349860,0x3c013f1e)

--Y-Fov
eeObj.WriteMem32(0x003498b0,0x3c013f40)
eeObj.WriteMem32(0x003498b4,0x4481f000)
eeObj.WriteMem32(0x003498c4,0x461e2103)
end

emuObj.AddVsyncHook(widescreen)