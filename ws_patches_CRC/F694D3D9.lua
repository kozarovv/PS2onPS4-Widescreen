apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shijyou Saikyou no Deshi Kenichi - Gekitou! Ragnarok Hachikengou [NTSC-J] (SLPM-66698)
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x013C7498,0x3F499999)
eeObj.WriteMem32(0x00477B10,0x40155555)
eeObj.WriteMem32(0x00477B14,0x41300000)
end

emuObj.AddVsyncHook(widescreen)