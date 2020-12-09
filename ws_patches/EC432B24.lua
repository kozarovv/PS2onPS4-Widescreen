apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Drakengard 2 (PAL-M3) (SLES-53794)
--comment=Widescreen hack by ElHecht

eeObj.WriteMem32(0x004D0D58,0x3FE38E32)
eeObj.WriteMem32(0x00562794,0x44550000)

-- 16:9
--eeObj.WriteMem32(0x002a1818,0x3c013f40)
--eeObj.WriteMem32(0x002a1820,0x4481f000)
--eeObj.WriteMem32(0x002a1824,0xc783c53c)
--eeObj.WriteMem32(0x002a1854,0x461e18c3)
--eeObj.WriteMem32(0x002d2b0c,0x3c014456)

-- 16:10
--eeObj.WriteMem32(0x002a1818,0x3c013f55)
--eeObj.WriteMem32(0x002a181c,0x34215555)
--eeObj.WriteMem32(0x002a1820,0x4481f000)
--eeObj.WriteMem32(0x002a1824,0xc783c53c)
--eeObj.WriteMem32(0x002a1854,0x461e18c3)
--eeObj.WriteMem32(0x002d2b0c,0x3c014441)

-- black border fix
eeObj.WriteMem32(0x003337e0,0x3c010000)
end

emuObj.AddVsyncHook(widescreen)