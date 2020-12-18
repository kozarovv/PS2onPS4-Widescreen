apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=RPM Tuning (E)(SLES-52190)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001ca480,0x080eca78)

eeObj.WriteMem32(0x003b29e0,0x3c013f40)
eeObj.WriteMem32(0x003b29e4,0x4481f000)
eeObj.WriteMem32(0x003b29e8,0xc6010068)
eeObj.WriteMem32(0x003b29ec,0xc602006c)
eeObj.WriteMem32(0x003b29f0,0x461e0843)
eeObj.WriteMem32(0x003b29f4,0xe6010068)
eeObj.WriteMem32(0x003b29f8,0x08072922)
end

emuObj.AddVsyncHook(widescreen)