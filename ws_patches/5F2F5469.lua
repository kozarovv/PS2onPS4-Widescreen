apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

-- 16:9
eeObj.WriteMem32(0x001BCD0C,0x3C013F40)
eeObj.WriteMem32(0x001BCD18,0x44810000)
eeObj.WriteMem32(0x001BCD1C,0x4600C602)
eeObj.WriteMem32(0x0018757C,0x3C0140A7)
end

emuObj.AddVsyncHook(widescreen)