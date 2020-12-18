apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00281450,0x3c023fe3)
eeObj.WriteMem32(0x00281454,0x34428e38)

-- 16:10
--eeObj.WriteMem32(0x00281450,0x3c023fcc)
--eeObj.WriteMem32(0x00281454,0x3442cccd)
end

emuObj.AddVsyncHook(widescreen)