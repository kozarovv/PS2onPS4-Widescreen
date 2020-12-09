apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--a043033c 7f4b023c (1st)
eeObj.WriteMem32(0x0011156c,0x3c034370)
--eeObj.WriteMem32(0x00111530,0x3c03400e)
--eeObj.WriteMem32(0x00111540,0x3c034010)

--Y-Fov
--f043023c 00188344
eeObj.WriteMem32(0x00111110,0x3c0243B4)

--X-Fov (Need Render fix)
--eeObj.WriteMem32(0x00111108,0x3c034455)
end

emuObj.AddVsyncHook(widescreen)