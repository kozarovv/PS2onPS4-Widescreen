apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 in SPANISH.ELF
eeObj.WriteMem32(0x003DBDB8,0x3C023F40)

--Gameplay 16:9 in ENGLISH.ELF
eeObj.WriteMem32(0x003CED58,0x3C023F40)

--Gameplay 16:9 in ITALIAN.ELF
eeObj.WriteMem32(0x003DBE18,0x3C023F40)
end

emuObj.AddVsyncHook(widescreen)