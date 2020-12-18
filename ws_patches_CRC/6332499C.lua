apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9
--0000803f(*) 0000803f abaaaa3f(*)
eeObj.WriteMem32(0x00481c28,0x3FE38E2A)
eeObj.WriteMem32(0x00481c20,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)