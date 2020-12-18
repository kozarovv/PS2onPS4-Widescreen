apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x003057EC,0x3C023F40)

--Menu font fix
eeObj.WriteMem32(0x003E56FC,0x3C033F40)
eeObj.WriteMem32(0x003E5704,0x3C033F80)
eeObj.WriteMem32(0x003E5708,0x44830800)
eeObj.WriteMem32(0x003E570C,0xAE630108)
eeObj.WriteMem32(0x003E5710,0xC6600104)
eeObj.WriteMem32(0x003E5714,0x46010036)
end

emuObj.AddVsyncHook(widescreen)