apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Ultimate Vol.28 - The Gaidou! Genocide Grand Prix - D
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x0074302C,0x3f100000)
end

emuObj.AddVsyncHook(widescreen)