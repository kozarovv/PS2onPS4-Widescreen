apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kidou Senshi Gundam - Renpou vs. Zeon DX (J)(SLPM-65076)

--Widescreen hack 16:9

eeObj.WriteMem32(0x0013b808,0x3c024328)
eeObj.WriteMem32(0x0019254c,0x3c024395)
end

emuObj.AddVsyncHook(widescreen)