apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas (NTSC-J by Arapapa)

--Gameplay 16:9

eeObj.WriteMem32(0x002d7180,0x3c013f14)
eeObj.WriteMem32(0x00250778,0x3c014010)
eeObj.WriteMem32(0x00220c38,0x3C013F8A)
end

emuObj.AddVsyncHook(widescreen)