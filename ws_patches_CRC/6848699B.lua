apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )

eeObj.WriteMem32(0x00315D28,0x24020001)

--eeObj.WriteMem32(0x0043376c,0x3faaaaaa)
--eeObj.WriteMem32(0x00831508,0x3faaaaaa)
end

emuObj.AddVsyncHook(widescreen)