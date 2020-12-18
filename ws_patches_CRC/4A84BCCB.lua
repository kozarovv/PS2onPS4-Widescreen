apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas

--3D Scenes
eeObj.WriteMem32(0x002AB844,0x3C013F40)
eeObj.WriteMem32(0x002AB848,0x44810000)
eeObj.WriteMem32(0x002AB850,0x4600C602)

--Battle's fix
eeObj.WriteMem32(0x007D16FC,0x44400000)
eeObj.WriteMem32(0x007D1704,0xC4400000)

--2D Scenes
eeObj.WriteMem32(0x00190C48,0x3C014440)
eeObj.WriteMem32(0x00190C4C,0x44810800)
eeObj.WriteMem32(0x00190C50,0x46010002)
eeObj.WriteMem32(0x00190C54,0xE7C00090)
eeObj.WriteMem32(0x00190C58,0x3C014480)
eeObj.WriteMem32(0x00190C5C,0x44810800)
eeObj.WriteMem32(0x00190C60,0xC60000E8)
eeObj.WriteMem32(0x00190C64,0x46010002)
eeObj.WriteMem32(0x00190C68,0xE7C000A4)
eeObj.WriteMem32(0x00190C6C,0xC60000E8)
eeObj.WriteMem32(0x00190C70,0x3C01C440)
eeObj.WriteMem32(0x00190C74,0x44810800)
end

emuObj.AddVsyncHook(widescreen)