apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gallop Racer 2006 (U)(SLUS-21393)
--comment=Widescreen hack by Arapapa

--X-Fov

--X-Fov
--803f013c 00508144 01000224
eeObj.WriteMem32(0x00134460,0x3c013f40)

--803f013c 00688144 00848ec7
eeObj.WriteMem32(0x00134af0,0x3c013f40)


--Render fix
--4842013c 00108144 01000224
eeObj.WriteMem32(0x00134888,0x3c0142d0)
end

emuObj.AddVsyncHook(widescreen)