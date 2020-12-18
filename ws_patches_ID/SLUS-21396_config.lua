apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Star Trek - Encounters (U)(SLUS-21396)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--3000bfff 06190046
--3000bfff 00000308
eeObj.WriteMem32(0x0024c204,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46001906)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e2102)
eeObj.WriteMem32(0x000c0010,0x08093082)
end

emuObj.AddVsyncHook(widescreen)