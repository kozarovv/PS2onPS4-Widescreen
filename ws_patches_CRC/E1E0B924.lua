apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Spectral Force Chronicle (J)(SLPM-65967)
--comment= Widescreen Hack by Arapapa

-- Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002ab6b0,0x08030000)
eeObj.WriteMem32(0x000c0000,0x3c013f40)
eeObj.WriteMem32(0x000c0004,0x4481f000)
eeObj.WriteMem32(0x000c0008,0xc6010068)
eeObj.WriteMem32(0x000c000c,0xc602006c)
eeObj.WriteMem32(0x000c0010,0x461e0843)
eeObj.WriteMem32(0x000c0014,0xe6010068)
eeObj.WriteMem32(0x000c0018,0x080aadae)

--Font Fix (Conversation)
eeObj.WriteMem32(0x00195208,0x0803000c)
eeObj.WriteMem32(0x000c0030,0x4600a386)
eeObj.WriteMem32(0x000c0034,0x3c013f60)
eeObj.WriteMem32(0x000c0038,0x4481f000)
eeObj.WriteMem32(0x000c003c,0x461ea382)
eeObj.WriteMem32(0x000c0040,0x08065483)

--Font X-position
eeObj.WriteMem32(0x0019520c,0x3c014215)

--2D Popup Portraits fix (Conversation)
eeObj.WriteMem32(0x0019497c,0x3c0143f0)
end

emuObj.AddVsyncHook(widescreen)