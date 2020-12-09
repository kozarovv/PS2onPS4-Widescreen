apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ultimate Spider-Man (J)(SLPM-66404)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


--X-Fov
--7400033c 3c10e14b
eeObj.WriteMem32(0x0058b7a0,0x081820d4)

eeObj.WriteMem32(0x00608350,0x3c030074)
eeObj.WriteMem32(0x00608354,0x3c013faa)
eeObj.WriteMem32(0x00608358,0x3421aaab)
eeObj.WriteMem32(0x0060835c,0x4481f000)
eeObj.WriteMem32(0x00608360,0x461e18c2)
eeObj.WriteMem32(0x00608364,0x08162de9)

--------------------
--Zoom
--eeObj.WriteMem32(0x005f8d60,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)