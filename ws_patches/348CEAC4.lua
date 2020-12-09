apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by flameofrecca
--pnach must be loaded before level, else codes won't work

eeObj.WriteMem32(0x00100278,0x3c013f40)

-------Some Useful Addresses for HUD fixing-----
--eeObj.WriteMem32(0x0011bf44,0x3c013f22)
--eeObj.WriteMem32(0x0011d7ac,0x3c013f22)
--eeObj.WriteMem32(0x0011d824,0x3c013f22)
end

emuObj.AddVsyncHook(widescreen)