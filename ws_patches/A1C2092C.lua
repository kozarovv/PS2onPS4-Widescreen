apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Motor Mayhem - Vehicular Combat League (U)(SLUS-20171)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0011cc84,0x3c014287)

--Render fix
eeObj.WriteMem32(0x00141fd8,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)