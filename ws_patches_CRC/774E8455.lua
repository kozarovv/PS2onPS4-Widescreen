apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--aa3f013c abaa2134 00008144 0800e003 00000000 00000000 0800e003
eeObj.WriteMem32(0x0042d160,0x3c013fe3)
eeObj.WriteMem32(0x0042d164,0x34218e2a)
end

emuObj.AddVsyncHook(widescreen)