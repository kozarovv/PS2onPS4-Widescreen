apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f013c 00008144 2d20a003
eeObj.WriteMem32(0x0011a458,0x3c013fab)

--Y-Fov
--2044023c
eeObj.WriteMem32(0x001d5904,0x3c024455)
end

emuObj.AddVsyncHook(widescreen)