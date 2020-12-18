apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wild Arms: Alter Code: F (SLUS-20937)
--comment=widescreen hack

--widescreen by sergx12 (improved by nemesis 2000)
eeObj.WriteMem32(0x00118af0,0x3c024455)
eeObj.WriteMem32(0x00118afc,0x3c023f40)
eeObj.WriteMem32(0x00118b34,0x460d6c43)
eeObj.WriteMem32(0x00118b38,0x460d6cc3)

eeObj.WriteMem32(0x00118b48,0x3c0343d5)

eeObj.WriteMem32(0x00118ba0,0x3c024455)
eeObj.WriteMem32(0x00118bac,0x3c023f40)
eeObj.WriteMem32(0x00118be4,0x460d6c43)
eeObj.WriteMem32(0x00118be8,0x460d6cc3)

eeObj.WriteMem32(0x00118c24,0x3c024586)
eeObj.WriteMem32(0x00118c3c,0x3c023f40)
eeObj.WriteMem32(0x00118c68,0x460d6c43)
eeObj.WriteMem32(0x00118c6c,0x460d6cc3)

eeObj.WriteMem32(0x00118c7c,0x3c034505)

eeObj.WriteMem32(0x00118cdc,0x3c024520)
eeObj.WriteMem32(0x00118cf4,0x3c023f40)
eeObj.WriteMem32(0x00118d20,0x460d6c43)
eeObj.WriteMem32(0x00118d24,0x460d6cc3)

eeObj.WriteMem32(0x00118d34,0x3c0344a0)

eeObj.WriteMem32(0x00118d9c,0x3c023f40)
eeObj.WriteMem32(0x00118e08,0x460d6c43)
eeObj.WriteMem32(0x00118e10,0x460d6cc3)

eeObj.WriteMem32(0x00118e68,0x3c023f40)
eeObj.WriteMem32(0x00118ed4,0x460d6c43)
eeObj.WriteMem32(0x00118ed8,0x460d6cc3)

eeObj.WriteMem32(0x00118f14,0x3c033f40)
eeObj.WriteMem32(0x00118f28,0x3c034506)

eeObj.WriteMem32(0x00118f44,0x3c023f40)
eeObj.WriteMem32(0x00118f58,0x3c0243da)

eeObj.WriteMem32(0x00118fe0,0x3c024505)

eeObj.WriteMem32(0x00119084,0x3c0243da)

eeObj.WriteMem32(0x001190ec,0x3c023f40)
eeObj.WriteMem32(0x001190f0,0x3c064555)
eeObj.WriteMem32(0x0011911c,0x460d6c43)
eeObj.WriteMem32(0x00119120,0x460d6cc3)

eeObj.WriteMem32(0x00119188,0x3c033f40)
eeObj.WriteMem32(0x001191a0,0x3c064455)
eeObj.WriteMem32(0x001191c8,0x460d6c43)
eeObj.WriteMem32(0x001191cc,0x460d6cc3)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x001c6a3c,0x24027100)
eeObj.WriteMem32(0x001c6a4c,0x34038f00)
end

emuObj.AddVsyncHook(widescreen)