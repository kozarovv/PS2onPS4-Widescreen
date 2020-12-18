apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Rurouni Kenshin - Enjou! Kyoto Rinne [NTSC-J] (SLPS-25685)
--comment=Widescreen Hack by Little Giant

--16:9
eeObj.WriteMem32(0x00120c70,0x3c013f53)
eeObj.WriteMem32(0x00120c74,0x34213334)

eeObj.WriteMem32(0x00122D1C,0x3C013Fab)
eeObj.WriteMem32(0x00122D44,0x4481F000)
eeObj.WriteMem32(0x00122B2C,0x461E6302)

eeObj.WriteMem32(0x0018a980,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)