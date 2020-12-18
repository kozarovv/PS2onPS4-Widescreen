apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Xenosaga Episode III - Zarathustra wa Kaku Katariki (DEMO) [NTSC-J] [Disc1] (SLPS-25640) / Xenosaga Episode III - Zarathustra wa Kaku Katariki [NTSC-J] [Disc2] (SLPS-25641)
--comment=Widescreen hack by nemesis2000 (pnach by Little Giant)

--gameplay
eeObj.WriteMem32(0x0054E120,0x3fc1f080)

--black borders's fix (optional)
eeObj.WriteMem32(0x002431D8,0x24060000)
eeObj.WriteMem32(0x002431EC,0x24c801c0)
end

emuObj.AddVsyncHook(widescreen)