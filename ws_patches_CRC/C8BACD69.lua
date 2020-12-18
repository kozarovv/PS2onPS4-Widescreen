apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Golful Golf (J)(SLPS-25032)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00688144 ec9380c7
eeObj.WriteMem32(0x00193708,0x3c013f40)

--Render fix
--00002044 0000f043 00008041
eeObj.WriteMem32(0x0041e5e0,0x44500000)
end

emuObj.AddVsyncHook(widescreen)