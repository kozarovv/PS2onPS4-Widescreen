apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Space Raiders (K)(SLKA-15002)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--abaaaa3e 8988083e d10d5d3d
--00007040 8988083e d10d5d3d
eeObj.WriteMem32(0x00260fe8,0x40700000)

--Y-Fov
--f53e023c 8fc24234 00008244 (1st)
--233f023c 0ad74234 00008244
eeObj.WriteMem32(0x001d26fc,0x3c023f23)
eeObj.WriteMem32(0x001d2700,0x3442d70a)
end

emuObj.AddVsyncHook(widescreen)