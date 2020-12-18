apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Initial D Special Stage (J)(SLPM-65268)
--comment=16:9 widescreen hack 99skull and Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001484ec,0x08030000)

eeObj.WriteMem32(0x000c0000,0x460328c3)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e18c2)
eeObj.WriteMem32(0x000c0010,0x0805213c)

------------------------/

--TLM Miss occurs
--16:9 widescreen hack by 99skull
--eeObj.WriteMem32(0x001484EC,0x0C03FFC0)
--eeObj.WriteMem32(0x000FFF00,0x3C013F40)
--eeObj.WriteMem32(0x000FFF04,0x44819800)
--eeObj.WriteMem32(0x000FFF08,0x460398C3)
--eeObj.WriteMem32(0x000FFF0C,0x03E00008)
end

emuObj.AddVsyncHook(widescreen)