apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 65 - The Kyonshi Panic (J)(SLPM-62543)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--003f013c 00a88144 50b0a0ac
eeObj.WriteMem32(0x001731b8,0x3c013f2a)
end

emuObj.AddVsyncHook(widescreen)