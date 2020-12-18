apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--widescreen fix
eeObj.WriteMem32(0x002c4524,0x3c013faa)
eeObj.WriteMem32(0x002c4528,0x3421aaaa)
eeObj.WriteMem32(0x002c4534,0x46036302)
eeObj.WriteMem32(0x002c4538,0x460318c2)
eeObj.WriteMem32(0x002c453c,0xe7ac0000)
eeObj.WriteMem32(0x002c4540,0x1480000f)
eeObj.WriteMem32(0x002c4544,0xafa00004)
eeObj.WriteMem32(0x002c4548,0x3c013faa)
eeObj.WriteMem32(0x002c454c,0x3421aaa8)
eeObj.WriteMem32(0x002c4550,0x44810800)
eeObj.WriteMem32(0x002c4554,0x3c013eaa)
eeObj.WriteMem32(0x002c4558,0x3421aaab)
eeObj.WriteMem32(0x002c455c,0x44810000)

--fastboot widescreen
eeObj.WriteMem32(0x003890E0,0x24020002)

--noise off
eeObj.WriteMem32(0x0047ABC0,0x00000000)
end

emuObj.AddVsyncHook(widescreen)