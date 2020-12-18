apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht (pnach by Little Giant)

-- 16:9
eeObj.WriteMem32(0x00333af8,0x3c023f61)
eeObj.WriteMem32(0x00333afc,0x34436873)

-- RE4 style camera
--eeObj.WriteMem32(0x00375c40,0x40900000)
--eeObj.WriteMem32(0x00375c50,0xC0000000)
--eeObj.WriteMem32(0x00375c60,0x41100000)
end

emuObj.AddVsyncHook(widescreen)