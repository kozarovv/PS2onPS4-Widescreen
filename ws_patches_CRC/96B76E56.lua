apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SX Superstar (E)(SLES-51495)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--83100146 5c00c4c4
eeObj.WriteMem32(0x0011f258,0x080d4368)
eeObj.WriteMem32(0x00350da0,0x46011083)
eeObj.WriteMem32(0x00350da4,0x3c013f40)
eeObj.WriteMem32(0x00350da8,0x4481f000)
eeObj.WriteMem32(0x00350dac,0x461e1083)
eeObj.WriteMem32(0x00350db0,0x08047c97)
end

emuObj.AddVsyncHook(widescreen)