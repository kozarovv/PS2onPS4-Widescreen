apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
--02100046 700120e6
eeObj.WriteMem32(0x003f9d2c,0x08153acc)
eeObj.WriteMem32(0x0054eb30,0x46001002)
eeObj.WriteMem32(0x0054eb34,0x3c013f40)
eeObj.WriteMem32(0x0054eb38,0x4481f000)
eeObj.WriteMem32(0x0054eb3c,0x461e0002)
eeObj.WriteMem32(0x0054eb40,0x080fe74c)

--Render fix
--3443033c b00421c6
eeObj.WriteMem32(0x00291b6c,0x3c034300)
end

emuObj.AddVsyncHook(widescreen)