apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Suikoden V PAL (SLES_540.87)
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x001B8804,0x3C023F40)

eeObj.WriteMem32(0x001B881C,0x46011083)
eeObj.WriteMem32(0x001B8820,0x46010843)
eeObj.WriteMem32(0x001B8824,0x0080802D)
eeObj.WriteMem32(0x001B8828,0xE4820068)
eeObj.WriteMem32(0x001B882C,0xE480006C)
eeObj.WriteMem32(0x001B8830,0xC4800068)
eeObj.WriteMem32(0x001B8834,0x46000803)
eeObj.WriteMem32(0x001B8838,0xE4800070)
eeObj.WriteMem32(0x001B883C,0xC480006C)
eeObj.WriteMem32(0x001B8840,0x46000803)
eeObj.WriteMem32(0x001B8844,0xE4800074)
eeObj.WriteMem32(0x001B8848,0x8C840004)
eeObj.WriteMem32(0x001B884C,0x10800003)
eeObj.WriteMem32(0x001B8850,0x3C023F80)
eeObj.WriteMem32(0x001B8854,0x0C06E77C)
eeObj.WriteMem32(0x001B8858,0x00000000)
eeObj.WriteMem32(0x001B885C,0x0200102D)
eeObj.WriteMem32(0x001B8860,0xDFBF0010)
eeObj.WriteMem32(0x001B8864,0x7BB00000)
eeObj.WriteMem32(0x001B8868,0x03E00008)
eeObj.WriteMem32(0x001B886C,0x27BD0020)

--FMV's fix - Only works for the 60hz mode
eeObj.WriteMem32(0x0025738C,0x3C0143F0)
eeObj.WriteMem32(0x00257394,0x44816000)
eeObj.WriteMem32(0x0025739C,0x3C0143E0)
eeObj.WriteMem32(0x002573A8,0x44816800)
end

emuObj.AddVsyncHook(widescreen)