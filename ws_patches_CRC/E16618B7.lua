apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Battle Engine Aquila (E)(SLES-50777)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00471b20,0x3d030000)

--Render fix
eeObj.WriteMem32(0x001c055c,0x3c013f00)
end

emuObj.AddVsyncHook(widescreen)