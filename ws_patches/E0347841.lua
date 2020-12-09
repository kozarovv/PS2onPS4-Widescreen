apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Xenosaga Episode III - Zarathustra wa Kaku Katariki [NTSC-J] [Disc1] (SLPS-25640) / Xenosaga Episode III - Zarathustra wa Kaku Katariki [NTSC-J] [Disc2] (SLPS-25641)
--comment=Widescreen hack by nemesis2000 (pnach by Little Giant)

--gameplay
eeObj.WriteMem32(0x0054e720,0x3fc1f080)

--cutscenes portrait's fix
eeObj.WriteMem32(0x00267950,0x24020078)
eeObj.WriteMem32(0x003e2da0,0x00000174)
eeObj.WriteMem32(0x003e2dc0,0x00000174)

--480p
eeObj.WriteMem32(0x0019ac18,0x24020001)
eeObj.WriteMem32(0x0019ac1c,0xa2020081)

--black borders's fix (optional)
eeObj.WriteMem32(0x00243768,0x24060000)
eeObj.WriteMem32(0x0024377c,0x24c801c0)
end

emuObj.AddVsyncHook(widescreen)