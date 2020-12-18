apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x0036EDB8,0x3FAAAAAA)
end

emuObj.AddVsyncHook(widescreen)