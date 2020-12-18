apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x0054FF20,0x3fc1f080)

--cutscenes portrait's fix
eeObj.WriteMem32(0x00268f40,0x24020078)
eeObj.WriteMem32(0x003e4340,0x00000174)
eeObj.WriteMem32(0x003e4360,0x00000174)

--480p
eeObj.WriteMem32(0x0019adf8,0x24020001)
eeObj.WriteMem32(0x0019adfc,0xa2020081)

--black borders's fix (optional)
eeObj.WriteMem32(0x00244d90,0x24060000)
eeObj.WriteMem32(0x00244da4,0x24c801c0)

--black border removal for bosses
--(CAUSES ISSUES WITH HAKOX - characters not loading in tutorials)
--eeObj.WriteMem32(0x00a9e5d8,0x24060000)
--eeObj.WriteMem32(0x00a9e5e0,0x240801c0)

--zoom value = 2054E200
end

emuObj.AddVsyncHook(widescreen)