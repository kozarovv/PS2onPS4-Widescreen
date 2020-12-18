apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Made Man (E)(SLES-54443)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x00152e68,0x3c013fab)

--Zoom
eeObj.WriteMem32(0x00220530,0x3c013f20)

--Black Bar Fix
eeObj.WriteMem32(0x00100b8c,0x3c010000)
eeObj.WriteMem32(0x00100ba0,0x3c010000)

--Black Scene Fix
--f043013c 00a08144 2d200002
eeObj.WriteMem32(0x00100e2c,0x3c010000)
end

emuObj.AddVsyncHook(widescreen)