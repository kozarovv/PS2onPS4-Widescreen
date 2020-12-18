apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hannspree Ten Kate Honda - SBK-07 Superbike World Championship (U)(SLUS-21656)
--comment=Widescreen hack by ElHecht

-- 16:9
--00088344 00000000 020b0046
eeObj.WriteMem32(0x0013c824,0x4483e800)
eeObj.WriteMem32(0x0013c828,0x4600eb02)
eeObj.WriteMem32(0x0013c82c,0xe7b40000)
eeObj.WriteMem32(0x0013c830,0x0c046676)
eeObj.WriteMem32(0x0013c834,0x46006d06)
eeObj.WriteMem32(0x0013c838,0x3c013f40)
eeObj.WriteMem32(0x0013c83c,0x4481f000)
eeObj.WriteMem32(0x0013c840,0x461e0003)


eeObj.WriteMem32(0x0013c858,0x4600e846)
end

emuObj.AddVsyncHook(widescreen)