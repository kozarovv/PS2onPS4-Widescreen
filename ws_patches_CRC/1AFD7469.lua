apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov + Zoom in
--00000000 00000000 03150146 00000000
--763f013c 00f88144 42081f46 46011503
eeObj.WriteMem32(0x001c610c,0x3c013f76)
eeObj.WriteMem32(0x001c6110,0x4481f800)
eeObj.WriteMem32(0x001c6114,0x461f0842)
eeObj.WriteMem32(0x001c6118,0x46011503)

--Zoom out
--0040023c 00008244 3c00a2c7
--dd3f023c 00008244 3c00a2c7
--Zoom value adjust : NTSC-K(3c023fdd), NTSC-U and PAL(3c023fe0) 
eeObj.WriteMem32(0x001c60f8,0x3c023fe0)

--------------------------------------
--zoom
--eeObj.WriteMem32(0x00102ca0,0x3c023f50)
--zoom
--eeObj.WriteMem32(0x0015809c,0x3c033eb0)
--X-Fov ?????
--eeObj.WriteMem32(0x00123bd0,0x3c013f90)
end

emuObj.AddVsyncHook(widescreen)