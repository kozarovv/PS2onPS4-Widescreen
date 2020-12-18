apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ephemeral Fantasia [NTSC-J] (SLUS-20169)
--comment=Widescreen Hack by Little Giant

--vert
eeObj.WriteMem32(0x00231ff4,0x3c023fa2)
eeObj.WriteMem32(0x00231ff8,0x34472222)
eeObj.WriteMem32(0x002ca600,0x3c023fa2)
eeObj.WriteMem32(0x002ca604,0x34422222)
eeObj.WriteMem32(0x0032849c,0x3C023FA2)
eeObj.WriteMem32(0x003284a0,0x34422222)

--zoom
eeObj.WriteMem32(0x002830E8,0x3c013f40)
eeObj.WriteMem32(0x002830EC,0x4481F000)

eeObj.WriteMem32(0x00232158,0x461e6302)
eeObj.WriteMem32(0x00232168,0xE46C0160)
eeObj.WriteMem32(0x0023216c,0x03E00008)
eeObj.WriteMem32(0x00232170,0xE4700154)

eeObj.WriteMem32(0x00232174,0x8F8516B8)
eeObj.WriteMem32(0x00232178,0x3C020040)
eeObj.WriteMem32(0x0023217c,0x24439960)
eeObj.WriteMem32(0x00232180,0x24020001)
eeObj.WriteMem32(0x00232184,0x00052040)
eeObj.WriteMem32(0x00232188,0x00852021)
eeObj.WriteMem32(0x0023218c,0x00042080)
eeObj.WriteMem32(0x00232190,0x00852021)
eeObj.WriteMem32(0x00232194,0x00042140)
eeObj.WriteMem32(0x00232198,0x00641821)
eeObj.WriteMem32(0x0023219c,0xE46C0158)
eeObj.WriteMem32(0x002321a0,0x03E00008)
eeObj.WriteMem32(0x002321a4,0xE46D015C)

eeObj.WriteMem32(0x002c9580,0x0c08c85d)
eeObj.WriteMem32(0x002ca60c,0x0c08c85d)
eeObj.WriteMem32(0x003284b0,0x0c08c85d)
eeObj.WriteMem32(0x003285b0,0x0c08c85d)
eeObj.WriteMem32(0x0033a960,0x0c08c85d)
eeObj.WriteMem32(0x0033ab68,0x0c08c85d)
end

emuObj.AddVsyncHook(widescreen)