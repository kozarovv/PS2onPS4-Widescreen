apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SpongeBob Squarepants - Revenge of the Flying Dutchman (E)(SLES-51285)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00301d04,0x3c023f40)


end

emuObj.AddVsyncHook(widescreen)