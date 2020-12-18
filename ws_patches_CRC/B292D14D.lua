apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Zero: Akai Chou (SLPS-25303)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x00336d0c,0x3f400000)

--FMV's fix
eeObj.WriteMem32(0x001e526c,0x3c013f40)
eeObj.WriteMem32(0x001e5270,0x0c079418)
eeObj.WriteMem32(0x001e5274,0x44811800)
eeObj.WriteMem32(0x001e5278,0x8f84bdcc)
eeObj.WriteMem32(0x001e527c,0x0c079d30)
eeObj.WriteMem32(0x001e5280,0x0040802d)
eeObj.WriteMem32(0x001e5284,0x0200102d)
eeObj.WriteMem32(0x001e5288,0xdfbf0008)
eeObj.WriteMem32(0x001e528c,0x27bd0010)
eeObj.WriteMem32(0x001e5290,0x03e00008)
eeObj.WriteMem32(0x001e5294,0xdfb00000)

eeObj.WriteMem32(0x001e5114,0x01c02820)
eeObj.WriteMem32(0x001e5118,0xe4830030)

eeObj.WriteMem32(0x0033a908,0x0000006a)

--Lens Flare's fix
eeObj.WriteMem32(0x0014f7dc,0x3c013f40)
eeObj.WriteMem32(0x0014f84c,0x44810800)
eeObj.WriteMem32(0x0014f850,0x46016302)
eeObj.WriteMem32(0x0013a214,0x0c053df7)
eeObj.WriteMem32(0x0013a29c,0x0c053df7)
eeObj.WriteMem32(0x0013a304,0x0c053df7)
eeObj.WriteMem32(0x0013a37c,0x0c053df7)

--Dither Effect Off
--eeObj.WriteMem32(0x0019ed14,0x10000012)

--Cutscenes Focus Effect fix (optional)
eeObj.WriteMem32(0x0020b95c,0x00000000)
end

emuObj.AddVsyncHook(widescreen)