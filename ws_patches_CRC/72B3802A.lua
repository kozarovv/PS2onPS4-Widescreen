apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by paul_met)
eeObj.WriteMem32(0x002e34d4,0x3c013f40)
eeObj.WriteMem32(0x002e34d8,0x44810000)
eeObj.WriteMem32(0x002e34e0,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)