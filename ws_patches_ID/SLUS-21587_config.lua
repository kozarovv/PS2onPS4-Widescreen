apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Made Man - Confessions of the Family Blood (U)(SLUS-21587)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9
--Y-Fov
--803f013c 00a88144 30001126
eeObj.WriteMem32(0x00152dd0,0x3c013fab)

--Zoom
--003f013c 00608144 0000a67f (2nd)
eeObj.WriteMem32(0x002205d8,0x3c013f20)

--Black Bar Fix
--2044013c 00c08144
eeObj.WriteMem32(0x00100b8c,0x3c010000)
eeObj.WriteMem32(0x00100ba0,0x3c010000)

--Black Scene Fix
--f043013c 00a08144 2d200002
eeObj.WriteMem32(0x00100e2c,0x3c010000)

--Zoom (Event, Menu)  3F508228
--eeObj.WriteMem32(0x001b2e10,0x3c013f50)
--eeObj.WriteMem32(0x001b2e14,0x34218228)
end

emuObj.AddVsyncHook(widescreen)