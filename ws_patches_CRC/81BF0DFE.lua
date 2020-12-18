apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f063c 905043ac
eeObj.WriteMem32(0x0016ff40,0x3c063f40)

--Direction Indicator Position
eeObj.WriteMem32(0x006b16c4,0x3f400000)
eeObj.WriteMem32(0x006b16ec,0x3f400000)

--Zoom
--eeObj.WriteMem32(0x00147240,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)