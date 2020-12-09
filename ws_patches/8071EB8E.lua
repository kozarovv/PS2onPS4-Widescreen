apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x003bad7c,0x3c013f40)
eeObj.WriteMem32(0x003bad80,0x4481f000)
eeObj.WriteMem32(0x003bad88,0x461eb582)
end

emuObj.AddVsyncHook(widescreen)