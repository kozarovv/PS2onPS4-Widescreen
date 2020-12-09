apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ultraman Fighting Evolution 2 [NTSC-J] (SLPS-25155)
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x002006B4,0x3C013F40)

--16:10
--eeObj.WriteMem32(0x002006B4,0x3C013F55)
end

emuObj.AddVsyncHook(widescreen)