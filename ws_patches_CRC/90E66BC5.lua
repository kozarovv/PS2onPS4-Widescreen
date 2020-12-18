apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Champions of Norrath (SLUS_20565)
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x00480074,0x3F3FFFFF)
eeObj.WriteMem32(0x004800E4,0x3F3FFFFF)
eeObj.WriteMem32(0x004800C4,0x3FE2FC95)
eeObj.WriteMem32(0x004801B8,0x3FE2FC95)
eeObj.WriteMem32(0x004801C0,0x3FE2FC95)
eeObj.WriteMem32(0x004801C8,0x3FE2FC95)
eeObj.WriteMem32(0x004801CC,0x3FE2FC95)
eeObj.WriteMem32(0x004801D4,0x3FE2FC95)
end

emuObj.AddVsyncHook(widescreen)