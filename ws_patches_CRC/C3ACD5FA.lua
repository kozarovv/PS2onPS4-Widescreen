apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Scaler (U)(SLUS-20957)
--comment=Widescreen Hack by ElHecht

--Widescreen hack 16:9
eeObj.WriteMem32(0x0021b9dc,0x080bd30c)
eeObj.WriteMem32(0x0021b9e0,0x00000000)
eeObj.WriteMem32(0x002f4c30,0x3c013f40)
eeObj.WriteMem32(0x002f4c38,0x4481f000)
eeObj.WriteMem32(0x002f4c3c,0x461e0842)
eeObj.WriteMem32(0x002f4c40,0xe4a10000)
eeObj.WriteMem32(0x002f4c44,0xaca00004)
eeObj.WriteMem32(0x002f4c48,0x08086e78)
eeObj.WriteMem32(0x0020b274,0x3c023f40)
eeObj.WriteMem32(0x0020b290,0x3c02bf40)
end

emuObj.AddVsyncHook(widescreen)