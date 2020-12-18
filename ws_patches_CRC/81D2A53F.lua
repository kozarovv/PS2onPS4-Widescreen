apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas

--3D Scenes
eeObj.WriteMem32(0x0035F12C,0x3C013F40)
eeObj.WriteMem32(0x0035F130,0x44810000)
eeObj.WriteMem32(0x0035F138,0x4600C602)

--Battle's fix
eeObj.WriteMem32(0x008BF7BC,0x44400000)
eeObj.WriteMem32(0x008BF7C4,0xC4400000)
eeObj.WriteMem32(0x008BEA2C,0x3FAAAAAB)

--2D Scenes 
eeObj.WriteMem32(0x001B0D88,0x3C014440)
eeObj.WriteMem32(0x001B0D8C,0x44810000)
end

emuObj.AddVsyncHook(widescreen)