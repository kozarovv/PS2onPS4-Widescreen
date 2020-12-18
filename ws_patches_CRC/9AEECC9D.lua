apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=World Championship Poker 2 - Featuring Howard Lederer (U)(SLUS-21176)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0023c2dc,0x08030000)
eeObj.WriteMem32(0x000c0000,0x46031082)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e1082)
eeObj.WriteMem32(0x000c0010,0x0808f0b8)
end

emuObj.AddVsyncHook(widescreen)