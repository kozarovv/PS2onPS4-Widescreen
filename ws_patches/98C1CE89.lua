apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hot Shots Golf 3 (K)(SCPS-56007)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--00002042 0000f041 46000000
eeObj.WriteMem32(0x003022e0,0x42500000)
--00002042 9a99993f 00000000
eeObj.WriteMem32(0x002f2940,0x42500000)
eeObj.WriteMem32(0x002f29ac,0x42500000)

--Y-Fov
--000060430000a043
eeObj.WriteMem32(0x0034840C,0x43955553)


--X-Fov
--403f033c 3000bfff 00288344
--eeObj.WriteMem32(0x001458f4,0x3c033f10)

--Zoom
--00002042b0d86d00
--eeObj.WriteMem32(0x006E8F00,0x42500000)

--x-fOV
/eeObj.WriteMem32(0x00348408,0x43F00000)

--eeObj.WriteMem32(0x00144658,0x3c054395)
end

emuObj.AddVsyncHook(widescreen)