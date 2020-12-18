apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cell Damage Overdrive (PAL-M5) SLES_515.54
--comment=Widescreen hack by dieSkaarj

eeObj.WriteMem32(0x00362ce8,0x3f400000)
eeObj.WriteMem32(0x00362D00,0x3faaaaab)

--eeObj.WriteMem32(0x0023f2a0,0x27bdff20)

end

emuObj.AddVsyncHook(widescreen)