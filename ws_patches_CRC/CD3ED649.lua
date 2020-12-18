apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Resident Evil - Survivor 2 - Code Veronica (PAL-E) (SLES-50650)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00339528,0x3c023f61)
eeObj.WriteMem32(0x0033952c,0x34436873)

-- RE4 style camera
--eeObj.WriteMem32(0x0037e2c0,0x40900000)
--eeObj.WriteMem32(0x0037e2d0,0xC0000000)
--eeObj.WriteMem32(0x0037e2e0,0x41100000)
end

emuObj.AddVsyncHook(widescreen)