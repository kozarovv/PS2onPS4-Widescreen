apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Canis Canem Edit (SLES-53561)
--comment=Widescreen fix by nemesis2000 (pnach by nemesis2000)

--Widescreen fix 
eeObj.WriteMem32(0x004720d0,0x14640007)
eeObj.WriteMem32(0x004720d4,0x3c030022)
eeObj.WriteMem32(0x004720d8,0x2404bec0)
eeObj.WriteMem32(0x004720dc,0xa4642dec)
eeObj.WriteMem32(0x004720e0,0x24043fc0)
eeObj.WriteMem32(0x004720e4,0x3c03001d)
eeObj.WriteMem32(0x004720e8,0xa4645124)
eeObj.WriteMem32(0x004720ec,0x10000007)
eeObj.WriteMem32(0x004720f0,0x2404bf00)
eeObj.WriteMem32(0x004720f4,0xa4642dec)
eeObj.WriteMem32(0x004720f8,0x24044000)
eeObj.WriteMem32(0x004720fc,0x3c03001d)
eeObj.WriteMem32(0x00472100,0xa4645124)
eeObj.WriteMem32(0x00472104,0x00000000)
eeObj.WriteMem32(0x00472108,0x00000000)

eeObj.WriteMem32(0x00010000,0x005e1638)
eeObj.WriteMem32(0x0072a3c8,0x435c0000)

eeObj.WriteMem32(0x00010000,0x005e1638)
eeObj.WriteMem32(0x0072a3cc,0x435c0000)

eeObj.WriteMem32(0x0001aaab,0x005e1638)
eeObj.WriteMem32(0x0072a3c8,0x432b0000)

eeObj.WriteMem32(0x0001aaab,0x005e1638)
eeObj.WriteMem32(0x0072a3cc,0x432b0000)

--eeObj.WriteMem32(0x0001aaab,0x005e1638)
--eeObj.WriteMem32(0x004720cc,0x24030000)

--eeObj.WriteMem32(0x0001aaab,0x005e1638)
--eeObj.WriteMem32(0x00222dec,0x3c01bec0)

--eeObj.WriteMem32(0x0001aaab,0x005e1638)
--eeObj.WriteMem32(0x001d5124,0x3c023fc0)

--eeObj.WriteMem32(0x00010000,0x005e1638)
--eeObj.WriteMem32(0x004720cc,0x90637c9e)

--eeObj.WriteMem32(0x00010000,0x005e1638)
--eeObj.WriteMem32(0x00222dec,0x3c01bf00)

--eeObj.WriteMem32(0x00010000,0x005e1638)
--eeObj.WriteMem32(0x001d5124,0x3c024000)
end

emuObj.AddVsyncHook(widescreen)