apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=ESPN International Track & Field (U)(SLUS20041)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Matrix Hack
eeObj.WriteMem32(0x00202ddc,0x3c013f40)
eeObj.WriteMem32(0x00202de0,0x44810000)
eeObj.WriteMem32(0x00202de8,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)