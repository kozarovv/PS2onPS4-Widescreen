apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Keroro Gunsou - MeroMero Battle Royale [NTSC-J] (SLPS-25399)
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x00025555,0x009B74C4)
eeObj.WriteMem32(0x0098E1AC,0x3C013F40)
eeObj.WriteMem32(0x009B74C4,0x44C71C71)
end

emuObj.AddVsyncHook(widescreen)