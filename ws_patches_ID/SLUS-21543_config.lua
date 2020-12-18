apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mortal Kombat: Armageddon Premium Edition(SLUS-21543)
--comment=Widescreen fix by nemesis2000 (pnach by nemesis2000)

--zoom for arcade mode (widescreen)
eeObj.WriteMem32(0x00220364,0x3c0342c0)

--aspect correction for widescreen mode
eeObj.WriteMem32(0x0017efa4,0x240201e0)
eeObj.WriteMem32(0x0017eff4,0x46140003)
eeObj.WriteMem32(0x0017f018,0x46800020)
eeObj.WriteMem32(0x0017f01c,0x46000803)
eeObj.WriteMem32(0x0017f020,0x46140003)

--black borders fix
eeObj.WriteMem32(0x001743f4,0x46000001)
eeObj.WriteMem32(0x00174404,0x46000001)
eeObj.WriteMem32(0x00174444,0x46000001)
eeObj.WriteMem32(0x00174454,0x46000001)

--widescreen switch fix
eeObj.WriteMem32(0x002204f8,0x24020340)
eeObj.WriteMem32(0x00220538,0x24020340)
end

emuObj.AddVsyncHook(widescreen)