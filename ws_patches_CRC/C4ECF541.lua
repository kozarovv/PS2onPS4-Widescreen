apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Legion - Legend of Excalibur (U)(SLUS 20048)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov

--00000000 83100f46 200083e4 00000000 00000000 03840d46
--403f013c 83100f46 200083e4 00f08144 03840d46 02841e46

eeObj.WriteMem32(0x0020e99c,0x3c013f40)
eeObj.WriteMem32(0x0020e9a8,0x4481f000)
eeObj.WriteMem32(0x0020e9ac,0x460d8403)
eeObj.WriteMem32(0x0020e9b0,0x461e8402)
end

emuObj.AddVsyncHook(widescreen)