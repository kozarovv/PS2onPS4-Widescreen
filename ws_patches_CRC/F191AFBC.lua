apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=MDK2: Armageddon (SLUS-20105)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)
eeObj.WriteMem32(0x0017B418,0x3C0140AB)
end

emuObj.AddVsyncHook(widescreen)