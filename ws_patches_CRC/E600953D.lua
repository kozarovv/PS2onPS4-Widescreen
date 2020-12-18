apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Batman - Rise of Shin Tzu (K)(SLKA-25102)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--0ad7233f 8fc2f53e
eeObj.WriteMem32(0x004af398,0x3F5A7408)

--Render Fix
--003f023c a80000c6
eeObj.WriteMem32(0x00307f88,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)