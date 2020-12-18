apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas

--3D Scenes
eeObj.WriteMem32(0x00344C9C,0x3C013F40)
eeObj.WriteMem32(0x00344CA0,0x44810000)
eeObj.WriteMem32(0x00344CA8,0x4600C602)

--Battle's fix
eeObj.WriteMem32(0x00A90054,0x44400000)
eeObj.WriteMem32(0x00A9005C,0xC4400000)

--2D Scenes
eeObj.WriteMem32(0x001A3F8C,0x3C014440)
eeObj.WriteMem32(0x001A3F90,0x44810800)
eeObj.WriteMem32(0x001A3F94,0x46010042)
eeObj.WriteMem32(0x001A3F98,0xE6810090)
eeObj.WriteMem32(0x001A3F9C,0x3C014480)
eeObj.WriteMem32(0x001A3FA0,0x44810800)
end

emuObj.AddVsyncHook(widescreen)