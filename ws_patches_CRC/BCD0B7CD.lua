apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Suikoden V (SLUS-21291)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )

eeObj.WriteMem32(0x001b8804,0x3c023f40)

eeObj.WriteMem32(0x001b881c,0x46011083)
eeObj.WriteMem32(0x001b8820,0x46010843)
eeObj.WriteMem32(0x001b8824,0x0080802d)
eeObj.WriteMem32(0x001b8828,0xe4820068)
eeObj.WriteMem32(0x001b882c,0xe480006c)
eeObj.WriteMem32(0x001b8830,0xc4800068)
eeObj.WriteMem32(0x001b8834,0x46000803)
eeObj.WriteMem32(0x001b8838,0xe4800070)
eeObj.WriteMem32(0x001b883c,0xc480006c)
eeObj.WriteMem32(0x001b8840,0x46000803)
eeObj.WriteMem32(0x001b8844,0xe4800074)
eeObj.WriteMem32(0x001b8848,0x8c840004)
eeObj.WriteMem32(0x001b884c,0x10800003)
eeObj.WriteMem32(0x001b8850,0x00000000)
eeObj.WriteMem32(0x001b8854,0x0c06e758)
eeObj.WriteMem32(0x001b8858,0x3c023f80)
eeObj.WriteMem32(0x001b885c,0x0200102d)
eeObj.WriteMem32(0x001b8860,0xdfbf0010)
eeObj.WriteMem32(0x001b8864,0x7bb00000)
eeObj.WriteMem32(0x001b8868,0x03e00008)
eeObj.WriteMem32(0x001b886c,0x27bd0020)

--FMV's fix
eeObj.WriteMem32(0x00256dec,0x3c0143f0)
eeObj.WriteMem32(0x00256df4,0x44816000)

eeObj.WriteMem32(0x00256dfc,0x3c0143e0)
eeObj.WriteMem32(0x00256e08,0x44816800)
end

emuObj.AddVsyncHook(widescreen)