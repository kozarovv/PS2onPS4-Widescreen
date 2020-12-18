apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=J-League Pro Soccer Club o Tsukurou! '04 (J)(SLPM-65530)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--00000000 803f023c 00088244 06c30046
eeObj.WriteMem32(0x00187f90,0x3c023faa)
eeObj.WriteMem32(0x00187f94,0x3442aaab)
end

emuObj.AddVsyncHook(widescreen)