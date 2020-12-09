apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Britney's Dance Beat [PAL] (SLES-50947)
--comment=Britney's Dance Beat

--Widescreen
eeObj.WriteMem32(0x00348134,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)