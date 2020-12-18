apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Forbidden Siren (SCES_519.20)

--gameplay by sergx12
eeObj.WriteMem32(0x002018a8,0x3c023f40)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x001fba78,0x3c027560)
eeObj.WriteMem32(0x001fbac4,0x34028aa0)
end

emuObj.AddVsyncHook(widescreen)