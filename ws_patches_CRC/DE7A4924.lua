apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=I.Q Remix+ - Intelligent Qube (J)(SCPS-11001)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x004a8d70,0x3c013f40)
eeObj.WriteMem32(0x004a8d74,0x4481f000)
eeObj.WriteMem32(0x004a8d84,0x46156303)
eeObj.WriteMem32(0x004a8d88,0x461e6302)
end

emuObj.AddVsyncHook(widescreen)