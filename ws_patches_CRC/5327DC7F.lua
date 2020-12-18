apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0024c214,0x3c013f40)
eeObj.WriteMem32(0x0024c218,0x44810000)
eeObj.WriteMem32(0x0024c220,0x4600c602)

--Hud Fix (El_Patas)
eeObj.WriteMem32(0x001fb174,0x3c013fab)

--Render fix
eeObj.WriteMem32(0x001fce14,0x3c0143e0)
end

emuObj.AddVsyncHook(widescreen)