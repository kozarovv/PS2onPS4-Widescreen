apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Screen Ratio
--0044053c 00008544 00108444
eeObj.WriteMem32(0x0013b348,0x3c054420)

--Scope (Inside View Range)
--803f033c 000083ac
eeObj.WriteMem32(0x00128040,0x3c033fab)
end

emuObj.AddVsyncHook(widescreen)