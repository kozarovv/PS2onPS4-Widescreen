apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disney's Peter Pan - The Legend of Never Land (E)(SCES-50522)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0011b854,0x08096408)

eeObj.WriteMem32(0x00259020,0x46145882)
eeObj.WriteMem32(0x00259024,0x3c013f40)
eeObj.WriteMem32(0x00259028,0x4481f000)
eeObj.WriteMem32(0x0025902c,0x461e1082)
eeObj.WriteMem32(0x00259030,0x08046e16)
end

emuObj.AddVsyncHook(widescreen)