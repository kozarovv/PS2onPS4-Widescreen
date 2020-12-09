apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Robots (E)(SLES-53052)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--803f013c 00188144 86080046 (1st)
eeObj.WriteMem32(0x0029936c,0x3c013f40)

--Zoom
--803f013c 00608144 4000a827
eeObj.WriteMem32(0x00299574,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)