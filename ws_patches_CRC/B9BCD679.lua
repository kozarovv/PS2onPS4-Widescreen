apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NBA Ballers - Phenom (U)(SLUS-21186)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--42420146 02490446
eeObj.WriteMem32(0x00136838,0x08150bd0)

eeObj.WriteMem32(0x00542f40,0x46014242)
eeObj.WriteMem32(0x00542f44,0x3c013f40)
eeObj.WriteMem32(0x00542f48,0x4481f000)
eeObj.WriteMem32(0x00542f4c,0x461e4a42)
eeObj.WriteMem32(0x00542f50,0x0804da0f)

--Render fix
--68008bc4 0800a327
eeObj.WriteMem32(0x00135ef0,0x08150bd8)

eeObj.WriteMem32(0x00542f60,0xc48b0068)
eeObj.WriteMem32(0x00542f64,0x3c013faa)
eeObj.WriteMem32(0x00542f68,0x3421aaab)
eeObj.WriteMem32(0x00542f6c,0x4481f000)
eeObj.WriteMem32(0x00542f70,0x461e5ac2)
eeObj.WriteMem32(0x00542f74,0x0804d7bd)
end

emuObj.AddVsyncHook(widescreen)