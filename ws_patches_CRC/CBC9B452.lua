apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=ObsCure [PAL-Eng] (SLES-52737)
--comment=Widescreen Hack

--Gameplay 16:9
eeObj.WriteMem32(0x00257C44,0x3C023F19)
eeObj.WriteMem32(0x00257C48,0x3441B604)
eeObj.WriteMem32(0x00257C4C,0x44810800)

--Render-Fix/Inventory
eeObj.WriteMem32(0x001E1BDC,0x3C034120)
eeObj.WriteMem32(0x001CA264,0x3C023FAA)
end

emuObj.AddVsyncHook(widescreen)