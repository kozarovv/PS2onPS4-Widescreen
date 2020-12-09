apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x01D0DEA0,0x3F400000)
eeObj.WriteMem32(0x006A2870,0x3F400000)

--FMV's fix
eeObj.WriteMem32(0x0023279c,0x240301aa)
eeObj.WriteMem32(0x002e52ec,0x240801aa)
end

emuObj.AddVsyncHook(widescreen)