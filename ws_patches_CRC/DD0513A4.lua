apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MLB 2005 (U)(SCUS-97326)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

eeObj.WriteMem32(0x001252b8,0x08030000)
eeObj.WriteMem32(0x000c0000,0x3c013f40)
eeObj.WriteMem32(0x000c0004,0x4481f000)
eeObj.WriteMem32(0x000c0008,0xc6010068)
eeObj.WriteMem32(0x000c000c,0xc602006c)
eeObj.WriteMem32(0x000c0010,0x461e0843)
eeObj.WriteMem32(0x000c0014,0xe6010068)
eeObj.WriteMem32(0x000c0018,0x080494b0)
end

emuObj.AddVsyncHook(widescreen)