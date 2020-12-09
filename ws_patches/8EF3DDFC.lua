apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ephemeral Fantasia [PAL] (SLES-50110)
--comment=Widescreen Hack by Little Giant

--Vert
eeObj.WriteMem32(0x00239dbc,0x3c023fa2)
eeObj.WriteMem32(0x00239dc0,0x34422222)
eeObj.WriteMem32(0x0034d140,0x3c023fa2)
eeObj.WriteMem32(0x0034d144,0x34422222)
eeObj.WriteMem32(0x002e4514,0x3C023FA2)
eeObj.WriteMem32(0x002e4518,0x34422222)

--Zoom
eeObj.WriteMem32(0x00239EF4,0x3c013f40)
eeObj.WriteMem32(0x00239F08,0x4481F000)
eeObj.WriteMem32(0x00239F0c,0x461e6302)
eeObj.WriteMem32(0x00239F10,0xE44C0160)
eeObj.WriteMem32(0x00239F14,0x24020001)
eeObj.WriteMem32(0x00239F18,0x03E00008)
end

emuObj.AddVsyncHook(widescreen)