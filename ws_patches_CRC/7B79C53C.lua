apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001de530,0x3c023f40)
eeObj.WriteMem32(0x001de544,0x460c6343)
eeObj.WriteMem32(0x001de5c8,0x3c023f40)
eeObj.WriteMem32(0x001de5dc,0x460c6343)
eeObj.WriteMem32(0x0016597c,0x3c033fb0)
eeObj.WriteMem32(0x00159524,0x3c034296)
end

emuObj.AddVsyncHook(widescreen)