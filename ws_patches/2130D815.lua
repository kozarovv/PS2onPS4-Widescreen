apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--f041013c 00008144 713e013c
eeObj.WriteMem32(0x00155e74,0x3c014120)

--Y-Fov
--440003e6 03a50046
eeObj.WriteMem32(0x001f8ea0,0x0805ed16)
eeObj.WriteMem32(0x0017b458,0x4600a503)
eeObj.WriteMem32(0x0017b45c,0x46031082)
eeObj.WriteMem32(0x0017b460,0x3c013f40)
eeObj.WriteMem32(0x0017b464,0x4481f000)
eeObj.WriteMem32(0x0017b468,0x461e18c3)
eeObj.WriteMem32(0x0017b46c,0xe6030044)
eeObj.WriteMem32(0x0017b470,0x0807e3ab)

----------------------------------/
--X-Fov (render fix)
--eeObj.WriteMem32(0x001f8ea8,0x0805ed16)
--eeObj.WriteMem32(0x0017b458,0x46031082)
--eeObj.WriteMem32(0x0017b45c,0x3c013f40)
--eeObj.WriteMem32(0x0017b460,0x4481f000)
--eeObj.WriteMem32(0x0017b464,0x461e1082)
--eeObj.WriteMem32(0x0017b468,0x0807e3ab)
end

emuObj.AddVsyncHook(widescreen)