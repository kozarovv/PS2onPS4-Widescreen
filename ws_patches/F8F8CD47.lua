apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Garfield (E)(SLES-52843)
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--Zoom
--193f023c 9a994234 00608244 (2nd)
eeObj.WriteMem32(0x00377b20,0x3c023f4c)
eeObj.WriteMem32(0x00377b24,0x3442cccd)

--Y-Fov
--03000246 700001e6
eeObj.WriteMem32(0x00314d78,0x08083bb4)

eeObj.WriteMem32(0x0020eed0,0x46020003)
eeObj.WriteMem32(0x0020eed4,0x3c013faa)
eeObj.WriteMem32(0x0020eed8,0x3421aaab)
eeObj.WriteMem32(0x0020eedc,0x4481f000)
eeObj.WriteMem32(0x0020eee0,0x461e0002)
eeObj.WriteMem32(0x0020eee4,0x080c535f)
end

emuObj.AddVsyncHook(widescreen)