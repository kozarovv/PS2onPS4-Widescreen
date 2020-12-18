apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa


-- 16:9 (0000803f d7a3703f 0000f943)
eeObj.WriteMem32(0x00431B08,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)