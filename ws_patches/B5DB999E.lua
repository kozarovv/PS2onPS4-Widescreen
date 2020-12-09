apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Chikyuu Boueigun 2 (K)(SLKA-15058)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--613f023c 803f033c ae474234
--613f023c 403f033c ae474234 (2nd)
eeObj.WriteMem32(0x001363f4,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)