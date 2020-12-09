apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )

--gameplay
eeObj.WriteMem32(0x005b8794,0x3C023f40)
eeObj.WriteMem32(0x005b87b0,0x4600b046)
eeObj.WriteMem32(0x005b87b8,0x4600a306)
eeObj.WriteMem32(0x005b87bc,0x4600ab46)

--rfix
eeObj.WriteMem32(0x005a1cac,0x3c014455)
eeObj.WriteMem32(0x005a1ce8,0x44810000)

--menu fix
eeObj.WriteMem32(0x0055e930,0x0c15ce5f)
eeObj.WriteMem32(0x0057397c,0x3c014456)
eeObj.WriteMem32(0x005739c4,0x44813000)
eeObj.WriteMem32(0x005739c8,0x2407ff95)

--HUD fix
eeObj.WriteMem32(0x00217ce4,0x3c03bddd)
eeObj.WriteMem32(0x00217cec,0x3464dddd)
end

emuObj.AddVsyncHook(widescreen)