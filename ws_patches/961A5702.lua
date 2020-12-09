apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Living World Racing (E)(SLES-53594)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0033bb18,0x080e8344)
eeObj.WriteMem32(0x0033bb1c,0x00000000)

eeObj.WriteMem32(0x003a0d10,0x3c013f40)
eeObj.WriteMem32(0x003a0d14,0x4481f000)
eeObj.WriteMem32(0x003a0d18,0xc6010068)
eeObj.WriteMem32(0x003a0d1c,0xc602006c)
eeObj.WriteMem32(0x003a0d20,0x461e0843)
eeObj.WriteMem32(0x003a0d24,0xe6010068)
eeObj.WriteMem32(0x003a0d28,0x080ceec8)
end

emuObj.AddVsyncHook(widescreen)