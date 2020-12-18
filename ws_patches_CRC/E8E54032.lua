apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Galerians - Ash x Rion Complete Pack [NTSC-J] (SLPS-25096)
--comment=Widescreen hack

eeObj.WriteMem32(0x001eec9c,0x3c013f40)
eeObj.WriteMem32(0x001eeca0,0x44810000)
eeObj.WriteMem32(0x001eeca8,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)