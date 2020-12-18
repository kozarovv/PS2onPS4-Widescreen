apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bakuen Kakusei - Neverland Senki Zero [NTSC-J] (SLPM-65635)
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x001062B8,0x3c013f40)
eeObj.WriteMem32(0x001062C8,0x4481F000)
eeObj.WriteMem32(0x0033ADD0,0x080eac04)
eeObj.WriteMem32(0x003ab008,0x080eac10)
eeObj.WriteMem32(0x003ab010,0x461e0fc3)
eeObj.WriteMem32(0x003ab014,0x46010043)
eeObj.WriteMem32(0x003ab018,0x461e0842)
eeObj.WriteMem32(0x003ab01c,0xe61f0068)
eeObj.WriteMem32(0x003ab020,0x080ceb76)
end

emuObj.AddVsyncHook(widescreen)