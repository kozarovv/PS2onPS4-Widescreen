apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht (pnach by Little Giant)

-- 16:9
eeObj.WriteMem32(0x00132e6c,0x3c023f80)
eeObj.WriteMem32(0x00132e70,0x344a0000)
end

emuObj.AddVsyncHook(widescreen)