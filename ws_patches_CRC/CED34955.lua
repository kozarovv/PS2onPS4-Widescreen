apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Samurai Champloo [NTSC-J] (SLPS-25600)
--comment=Widescreen hack by ElHecht (pnach by Little Giant)

-- 16:9
eeObj.WriteMem32(0x00140414,0x3c023fbd)
eeObj.WriteMem32(0x0014041c,0x3442a12e)
end

emuObj.AddVsyncHook(widescreen)