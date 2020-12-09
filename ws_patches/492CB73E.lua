apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--widescreen fix
eeObj.WriteMem32(0x002c470c,0x3c013faa)
eeObj.WriteMem32(0x002c4710,0x3421aaaa)
eeObj.WriteMem32(0x002c471c,0x46036302)
eeObj.WriteMem32(0x002c4720,0x460318c2)
eeObj.WriteMem32(0x002c4724,0xe7ac0000)
eeObj.WriteMem32(0x002c4728,0x1480000f)
eeObj.WriteMem32(0x002c472c,0xafa00004)
eeObj.WriteMem32(0x002c4730,0x3c013faa)
eeObj.WriteMem32(0x002c4734,0x3421aaa8)
eeObj.WriteMem32(0x002c4738,0x44810800)
eeObj.WriteMem32(0x002c473c,0x3c013eaa)
eeObj.WriteMem32(0x002c4740,0x3421aaab)
eeObj.WriteMem32(0x002c4744,0x44810000)

--fastboot widescreen
eeObj.WriteMem32(0x003892B8,0x24020002)

--noise off
--eeObj.WriteMem32(0x0047ADC0,0x00000000)
end

emuObj.AddVsyncHook(widescreen)