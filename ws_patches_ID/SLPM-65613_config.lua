apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Yu-Gi-Oh! Capsule Monster Coliseum (J)(SLPM-65613)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov (Only Battlefields)
eeObj.WriteMem32(0x001db054,0x3c023faa)
eeObj.WriteMem32(0x001db058,0x3442aaab)
eeObj.WriteMem32(0x001db05c,0x44820000)

--2D fix
--00 00 80 BF 00 00 80 3F 00 00 80 BF 00 00 80 3F 00 00 80 3F
eeObj.WriteMem32(0x00976650,0xbf400000)
eeObj.WriteMem32(0x00976660,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)