apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=We Love Katamari (SLES-53828)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x00108400,0x3c0143d6)
end

emuObj.AddVsyncHook(widescreen)