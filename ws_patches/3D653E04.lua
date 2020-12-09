apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0109458c,0x3c013f40)
eeObj.WriteMem32(0x01094590,0x44810000)
eeObj.WriteMem32(0x01094598,0x4600c602)

--Render fix
eeObj.WriteMem32(0x010d1f18,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)