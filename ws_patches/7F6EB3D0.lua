apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )

--gameplay
eeObj.WriteMem32(0x004b5114,0x3c033f40)
eeObj.WriteMem32(0x004b5144,0x4600a886)
eeObj.WriteMem32(0x004b514c,0x46000346)
eeObj.WriteMem32(0x004b5150,0x4600a306)

--rfix
eeObj.WriteMem32(0x004a4e70,0x3c014455)
eeObj.WriteMem32(0x004a4eac,0x44810000)

--menu fix
eeObj.WriteMem32(0x00464538,0x0c11e32f)
eeObj.WriteMem32(0x00478cbc,0x3c014456)
eeObj.WriteMem32(0x00478d08,0x44812800)
eeObj.WriteMem32(0x00478d04,0x2407ff95)

--HUD fix
eeObj.WriteMem32(0x001d8c80,0x3c03bddd)
eeObj.WriteMem32(0x001d8c88,0x3464dddd)

--partial bb fix
eeObj.WriteMem32(0x00253110,0x00000000)
eeObj.WriteMem32(0x002bd92c,0x00000000)
end

emuObj.AddVsyncHook(widescreen)