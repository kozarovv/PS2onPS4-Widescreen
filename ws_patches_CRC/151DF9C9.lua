apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--0000803f 0000803f 0000003f 66666645
eeObj.WriteMem32(0x007BED88,0x3FAAAAAB)
end

emuObj.AddVsyncHook(widescreen)