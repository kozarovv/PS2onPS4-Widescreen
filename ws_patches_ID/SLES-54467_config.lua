apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Final Armada (E)(SLES-54467)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x004293DC,0x42AD5554)

--Y-Fov
--eeObj.WriteMem32(0x001421ec,0x3c023ec0)
--eeObj.WriteMem32(0x003102e4,0x3c023fab)

--Zoom
--eeObj.WriteMem32(0x00313444,0x3c02bec0)
--eeObj.WriteMem32(0x003141d4,0x3c023f40)

--eeObj.WriteMem32(0x001013c0,0x3c0242ad)
end

emuObj.AddVsyncHook(widescreen)