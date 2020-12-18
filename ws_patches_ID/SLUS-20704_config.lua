apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Backyard Basketball (U)(SLUS-20704)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov

eeObj.WriteMem32(0x002c9820,0x080e33b8)
eeObj.WriteMem32(0x0038cee0,0x46043403)
eeObj.WriteMem32(0x0038cee4,0x3c013f40)
eeObj.WriteMem32(0x0038cee8,0x4481f000)
eeObj.WriteMem32(0x0038ceec,0x461e8402)
eeObj.WriteMem32(0x0038cef0,0x080b2609)

end

emuObj.AddVsyncHook(widescreen)