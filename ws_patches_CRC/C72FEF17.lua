apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Polar Express (E)(SLES-52685)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x003476a0,0x080bc564)
eeObj.WriteMem32(0x003476a4,0x00000000)

eeObj.WriteMem32(0x002f1590,0x3c013f40)
eeObj.WriteMem32(0x002f1594,0x4481f000)
eeObj.WriteMem32(0x002f1598,0xc6010068)
eeObj.WriteMem32(0x002f159c,0xc602006c)
eeObj.WriteMem32(0x002f15a0,0x461e0843)
eeObj.WriteMem32(0x002f15a4,0xe6010068)
eeObj.WriteMem32(0x002f15a8,0x080d1daa)
end

emuObj.AddVsyncHook(widescreen)