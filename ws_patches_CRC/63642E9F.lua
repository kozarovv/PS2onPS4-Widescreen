apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000
eeObj.WriteMem32(0x002097dc,0x3c013f40)
eeObj.WriteMem32(0x002097e0,0x44810000)
eeObj.WriteMem32(0x002097e8,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)