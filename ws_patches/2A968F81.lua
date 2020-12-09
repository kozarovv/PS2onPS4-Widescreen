apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--built-in widescreen
eeObj.WriteMem32(0x001ccdc8,0xa2740bcc)
end

emuObj.AddVsyncHook(widescreen)