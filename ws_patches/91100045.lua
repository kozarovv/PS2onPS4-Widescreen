apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Fast and the Furious (E)(SLES-54483)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00354e24,0x080e69d4)

eeObj.WriteMem32(0x0039a750,0x460308c2)
eeObj.WriteMem32(0x0039a754,0x3c013f40)
eeObj.WriteMem32(0x0039a758,0x4481f000)
eeObj.WriteMem32(0x0039a75c,0x461e18c2)
eeObj.WriteMem32(0x0039a760,0x080d538a)
end

emuObj.AddVsyncHook(widescreen)