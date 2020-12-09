apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
--02100046 700120e6
eeObj.WriteMem32(0x003f993c,0x08150c04)
eeObj.WriteMem32(0x00543010,0x46001002)
eeObj.WriteMem32(0x00543014,0x3c013f40)
eeObj.WriteMem32(0x00543018,0x4481f000)
eeObj.WriteMem32(0x0054301c,0x461e0002)
eeObj.WriteMem32(0x00543020,0x080fe650)

--Render fix
--3443033c b00421c6
eeObj.WriteMem32(0x00291a1c,0x3c034300)
end

emuObj.AddVsyncHook(widescreen)