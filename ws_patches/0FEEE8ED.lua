apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9  
eeObj.WriteMem32(0x0015b0b4,0x3c013f40)
eeObj.WriteMem32(0x0015b0b8,0x44810000)
eeObj.WriteMem32(0x0015b0c0,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)