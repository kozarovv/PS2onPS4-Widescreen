apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by sergx12
--Ported to PAL (ElHecht)

-- 16:9
eeObj.WriteMem32(0x005b8868,0x3f9c71cb)

-- 16:10
--eeObj.WriteMem32(0x005b8868,0x3f8ccccd)
end

emuObj.AddVsyncHook(widescreen)