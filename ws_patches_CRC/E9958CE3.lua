apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=ChoroQ Works (NTSC-J) (SLPM_657.24)
--comment=Widescreen Hack by El_Patas

-- 16:9
eeObj.WriteMem32(0x001FFB74,0x3C013F40)
eeObj.WriteMem32(0x001FFB80,0x44810000)
eeObj.WriteMem32(0x001FFB84,0x4600C602)
eeObj.WriteMem32(0x001B7C1C,0x3C0140A7)
end

emuObj.AddVsyncHook(widescreen)