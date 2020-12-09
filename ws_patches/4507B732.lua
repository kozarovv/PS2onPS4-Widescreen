apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0011abfc,0x3c043ec0)

--Y-Fov
eeObj.WriteMem32(0x0016abf4,0x3c013fab)
eeObj.WriteMem32(0x0016abf8,0x44810000)
eeObj.WriteMem32(0x0016ac00,0x4600bdc2)

--eeObj.WriteMem32(0x001244c4,0x3c033fAB)
end

emuObj.AddVsyncHook(widescreen)