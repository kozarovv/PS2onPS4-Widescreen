apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Speed Machines III (E)(SLES-53920)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001d04c0,0x3c014055)

--Render fix
eeObj.WriteMem32(0x001bdf74,0x3c013f2b)

end

emuObj.AddVsyncHook(widescreen)