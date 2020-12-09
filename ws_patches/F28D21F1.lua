apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Dragon Ball Z: Sparking! Meteor WS patch
--Widescreen Y(decreases height a bit)
eeObj.WriteMem32(0x01948794,0x4410553E)
eeObj.WriteMem32(0x01948EB4,0x4410553E)
eeObj.WriteMem32(0x01949144,0x4410553E)
eeObj.WriteMem32(0x01949434,0x4410553E)
eeObj.WriteMem32(0x019487D4,0x3E90674C)
eeObj.WriteMem32(0x01948EF4,0x3E90674C)
eeObj.WriteMem32(0x01949184,0x3E90674C)
eeObj.WriteMem32(0x01949474,0x3E90674C)
--zoom fix
eeObj.WriteMem32(0x002FD054,0x404CCCCD)
eeObj.WriteMem32(0x002FD058,0x3A831CD5)
end

emuObj.AddVsyncHook(widescreen)