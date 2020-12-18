apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=ObsCure II (PAL-M5) (SLES-54782)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00172924,0x08103ca7)
eeObj.WriteMem32(0x00172928,0x00000000)

eeObj.WriteMem32(0x0040f29c,0x3c013f40)
eeObj.WriteMem32(0x0040f2a0,0x4481f000)
eeObj.WriteMem32(0x0040f2a4,0x46070202)
eeObj.WriteMem32(0x0040f2a8,0x24430050)
eeObj.WriteMem32(0x0040f2ac,0x461e4202)
eeObj.WriteMem32(0x0040f2b0,0x0805ca4a)

-- Render-Fix
eeObj.WriteMem32(0x002561dc,0x3c023faa)

-- black borders fix by nemesis2000
eeObj.WriteMem32(0x001f4aa8,0x3c020000)
eeObj.WriteMem32(0x001f4a38,0x3c030000)
eeObj.WriteMem32(0x001f4b28,0x3c020000)
end

emuObj.AddVsyncHook(widescreen)