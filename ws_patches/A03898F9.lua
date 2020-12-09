apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Knights of the Temple - Infernal Crusade (PAL-M4) (SLES-52448)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002b83ac,0x3c013f40)
eeObj.WriteMem32(0x002b83b0,0x4481f000)
eeObj.WriteMem32(0x002b83cc,0x461e6303)
end

emuObj.AddVsyncHook(widescreen)