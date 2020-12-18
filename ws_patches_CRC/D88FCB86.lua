apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Astro Boy (U)(SLUS-20867)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Fov
eeObj.WriteMem32(0x002cb778,0x3c013fd5)

--Zoom
eeObj.WriteMem32(0x0037f2f8,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)