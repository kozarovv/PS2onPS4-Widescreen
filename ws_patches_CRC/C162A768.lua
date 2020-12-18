apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cowboy Bebop - Tsuioku no Serenade (J)(SLPS-25551)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Matrix hack
eeObj.WriteMem32(0x0030d4ac,0x3c013f40)
eeObj.WriteMem32(0x0030d4b0,0x44810000)
eeObj.WriteMem32(0x0030d4b8,0x4600c602)

--Render fix
eeObj.WriteMem32(0x004430e0,0x43e00000)
end

emuObj.AddVsyncHook(widescreen)