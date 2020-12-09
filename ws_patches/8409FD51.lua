apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x0015DD04,0x3C013F20)
eeObj.WriteMem32(0x0015DD08,0x34216D3A)
eeObj.WriteMem32(0x0015E190,0x00000000)
eeObj.WriteMem32(0x0015E198,0x3C013F40)
eeObj.WriteMem32(0x0015E19C,0x4481C800)
eeObj.WriteMem32(0x0015E1A4,0x46196b42)
eeObj.WriteMem32(0x0015E1A8,0xE7AD0040)
eeObj.WriteMem32(0x0015E20C,0x3C0143D6)

--No interlacing by asasega
eeObj.WriteMem32(0x001A7054,0x00000000)
eeObj.WriteMem32(0x001A70DC,0x00000000)
end

emuObj.AddVsyncHook(widescreen)