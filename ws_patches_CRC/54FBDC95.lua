apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001AC994,0x3C013F40)

--Cutscenes in movement fix
eeObj.WriteMem32(0x001AD674,0x3C013F40)

--Removes black box cutscenes texts (Optional)
--eeObj.WriteMem32(0x001B3CE0,0x3C013D00)
end

emuObj.AddVsyncHook(widescreen)