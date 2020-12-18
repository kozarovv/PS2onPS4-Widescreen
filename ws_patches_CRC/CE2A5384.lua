apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gacharoku (J)(SCPS-11026)
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--X-Fov
--000018e6 280000ae 00000000
eeObj.WriteMem32(0x006cca30,0x081b9d89)

eeObj.WriteMem32(0x006e7624,0x3c013f40)
eeObj.WriteMem32(0x006e7628,0x4481b800)
eeObj.WriteMem32(0x006e762c,0x4617c602)
eeObj.WriteMem32(0x006e7630,0xe6180000)
eeObj.WriteMem32(0x006e7634,0x081b328d)
end

emuObj.AddVsyncHook(widescreen)