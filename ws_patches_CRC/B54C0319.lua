apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Capcom vs. SNK 2: Mark of the Millennium 2001  [NTSC-J] (SLPM-65047)
--comment=Widescreen patch by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x00142fb0,0x3C023FAA)
eeObj.WriteMem32(0x00143224,0x3C023FAA)
eeObj.WriteMem32(0x00125030,0xAC83003C)
eeObj.WriteMem32(0x00125034,0x3C033F40)
eeObj.WriteMem32(0x00125038,0x03E00008)
eeObj.WriteMem32(0x0012503C,0xAC830000)
eeObj.WriteMem32(0x0012492c,0x3C023FE3)
end

emuObj.AddVsyncHook(widescreen)