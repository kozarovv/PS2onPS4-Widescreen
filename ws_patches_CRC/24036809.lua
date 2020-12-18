apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x001322a0,0x3c023fc0)

eeObj.WriteMem32(0x00137860,0x00000000)

eeObj.WriteMem32(0x0026c590,0x3c024370)
eeObj.WriteMem32(0x0026c594,0x44826800)
eeObj.WriteMem32(0x0026c598,0x2402401c)
eeObj.WriteMem32(0x0026c59c,0x3c01002e)
eeObj.WriteMem32(0x0026c5a0,0x03e00008)
eeObj.WriteMem32(0x0026c5a4,0xa4222ab0)
eeObj.WriteMem32(0x0026c5a8,0x00000000)
eeObj.WriteMem32(0x0026c5ac,0x00000000)
eeObj.WriteMem32(0x0026c5b0,0x3c024370)
eeObj.WriteMem32(0x0026c5b4,0x44826800)
eeObj.WriteMem32(0x0026c5b8,0x24024040)
eeObj.WriteMem32(0x0026c5bc,0x3c01002e)
eeObj.WriteMem32(0x0026c5c0,0x03e00008)
eeObj.WriteMem32(0x0026c5c4,0xa4222ab0)
eeObj.WriteMem32(0x0026c5c8,0x00000000)
eeObj.WriteMem32(0x0026c5cc,0x00000000)

eeObj.WriteMem32(0x00171db4,0x0809b16c)
eeObj.WriteMem32(0x00171db8,0x00000000)

eeObj.WriteMem32(0x00171d08,0x0809b164)
eeObj.WriteMem32(0x00171d0c,0x00000000)

eeObj.WriteMem32(0x002cfefc,0x3c013f80)
eeObj.WriteMem32(0x002cff00,0x44811000)

--old

--gameplay
--eeObj.WriteMem32(0x00132298,0x3c023f61)
--eeObj.WriteMem32(0x0013229c,0x34436893)

--render fix
--eeObj.WriteMem32(0x00171DA8,0x3c0243d6)
--eeObj.WriteMem32(0x00171CFC,0x3c0243d6)

--eeObj.WriteMem32(0x002e29e8,0x3c014466)
--eeObj.WriteMem32(0x002e29ec,0x44810800)

--eeObj.WriteMem32(0x002cfeec,0x3c013f97)
--eeObj.WriteMem32(0x002cfef0,0x44811800)

--FMV's fix
eeObj.WriteMem32(0x01E218C0,0x01AA0280)
eeObj.WriteMem32(0x01E218C4,0x000C0000)

--font fix
eeObj.WriteMem32(0x002B9A50,0x3C013F40)
eeObj.WriteMem32(0x002B9A54,0x44816000)
eeObj.WriteMem32(0x002B9A58,0x460C6B02)
eeObj.WriteMem32(0x002B9A5c,0x3C010050)
eeObj.WriteMem32(0x002B9A60,0xE42C8140)
eeObj.WriteMem32(0x002B9A64,0xE42D8138)
eeObj.WriteMem32(0x002B9A68,0x03E00008)
eeObj.WriteMem32(0x002B9A6c,0xE42E8130)
end

emuObj.AddVsyncHook(widescreen)