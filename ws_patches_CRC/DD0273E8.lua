apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Brothers in Arms: Earned in Blood [PAL-M5] (SLES_536.59)
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x002F19DC,0x3C023F40)

--Menu font fix
eeObj.WriteMem32(0x003C60FC,0x3C033F40)
eeObj.WriteMem32(0x003C6104,0x3C033F80)
eeObj.WriteMem32(0x003C6108,0x44830800)
eeObj.WriteMem32(0x003C610C,0xAE63010C)
eeObj.WriteMem32(0x003C6110,0xC6600108)
eeObj.WriteMem32(0x003C6114,0x46010036)
end

emuObj.AddVsyncHook(widescreen)