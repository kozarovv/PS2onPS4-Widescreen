apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ougon Kishi Garo [NTSC-J] (SLPS-20463)
--comment=Widescreen Hack by Little Giant

--16:9
eeObj.WriteMem32(0x0020C7F8,0x3c013f40)
eeObj.WriteMem32(0x0020C7Fc,0x4481F000)
eeObj.WriteMem32(0x0029ED78,0x080c5a2a)
eeObj.WriteMem32(0x0031689c,0x080c5a30)
eeObj.WriteMem32(0x003168a8,0x461e0fc3)
eeObj.WriteMem32(0x003168ac,0x46010043)
eeObj.WriteMem32(0x003168b0,0x461e0842)
eeObj.WriteMem32(0x003168b4,0xe61f0068)
eeObj.WriteMem32(0x003168b8,0x080a7b60)
end

emuObj.AddVsyncHook(widescreen)