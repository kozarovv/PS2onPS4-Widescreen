apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--420a0246 42490546
eeObj.WriteMem32(0x0028cdac,0x08096398)

eeObj.WriteMem32(0x00258e60,0x46020a42)
eeObj.WriteMem32(0x00258e64,0x3c013f40)
eeObj.WriteMem32(0x00258e68,0x4481f000)
eeObj.WriteMem32(0x00258e6c,0x461e4a42)
eeObj.WriteMem32(0x00258e70,0x080a336c)

--Render fix
--5a42033c 33b36334
eeObj.WriteMem32(0x00156308,0x3c034380)
end

emuObj.AddVsyncHook(widescreen)