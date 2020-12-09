apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by sergx12, PAL conversion & black bar fix by FlatOut
eeObj.WriteMem32(0x0016edc0,0x3c033f40)
eeObj.WriteMem32(0x0016fbac,0x3c043f40)
eeObj.WriteMem32(0x0022E010,0x43d60000)
eeObj.WriteMem32(0x0022E020,0x43d60000)
--black bar fix
eeObj.WriteMem32(0x0055EAD0,0x00000000)
eeObj.WriteMem32(0x0055EB50,0x00000000)
end

emuObj.AddVsyncHook(widescreen)