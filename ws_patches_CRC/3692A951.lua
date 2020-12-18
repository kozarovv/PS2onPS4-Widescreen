apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x0028ff90,0x3c023fe3)
eeObj.WriteMem32(0x0028ff98,0x34428e38)
eeObj.WriteMem32(0x0028fe50,0x3c013f40)
eeObj.WriteMem32(0x0028fe54,0x44810000)
eeObj.WriteMem32(0x0028fe58,0x46006303)
end

emuObj.AddVsyncHook(widescreen)