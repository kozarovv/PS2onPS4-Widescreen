apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Perfect Ace 2 - The Championships (E)(SLES-52402)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0027cce0,0x080b50c4)
eeObj.WriteMem32(0x0027cce4,0x00000000)

eeObj.WriteMem32(0x002d4310,0x3c013f40)
eeObj.WriteMem32(0x002d4314,0x4481f000)
eeObj.WriteMem32(0x002d4318,0xc6010068)
eeObj.WriteMem32(0x002d431c,0xc602006c)
eeObj.WriteMem32(0x002d4320,0x461e0843)
eeObj.WriteMem32(0x002d4324,0xe6010068)
eeObj.WriteMem32(0x002d4328,0x0809f33a)
end

emuObj.AddVsyncHook(widescreen)