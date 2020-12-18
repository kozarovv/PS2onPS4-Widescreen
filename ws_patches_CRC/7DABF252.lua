apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--83001646140000e6
eeObj.WriteMem32(0x0011a1dc,0x0804afdc)
eeObj.WriteMem32(0x0012bf70,0x46160083)
eeObj.WriteMem32(0x0012bf74,0x3c013f40)
eeObj.WriteMem32(0x0012bf78,0x4481f000)
eeObj.WriteMem32(0x0012bf7c,0x461e1082)
eeObj.WriteMem32(0x0012bf80,0x08046878)
end

emuObj.AddVsyncHook(widescreen)