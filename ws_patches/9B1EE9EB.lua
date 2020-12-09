apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=DNA - Dark Native Apostle (E)(SLES-50202)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0019278c,0x3c013f40)
eeObj.WriteMem32(0x00192790,0x44810000)
eeObj.WriteMem32(0x00192798,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)