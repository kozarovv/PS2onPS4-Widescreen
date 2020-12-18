apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001e9a14,0x3c013f40)

--Direction Indicator Position
--206454E0 3faaaaab
eeObj.WriteMem32(0x006454E0,0x3faaaaab)

--Zoom
--eeObj.WriteMem32(0x0010524c,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)