apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x0034b004,0x3c013f40)
eeObj.WriteMem32(0x0034b008,0x44810000)
eeObj.WriteMem32(0x0034b010,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)