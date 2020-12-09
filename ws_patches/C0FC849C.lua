apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= Dual Hearts [NTSC-J] (SCPS-15022)
--comment=Widescreen fix (Pnach by Little Gaint)

eeObj.WriteMem32(0x006F0D30,0x41400000)

--Partial HUD fix
eeObj.WriteMem32(0x006cb200,0x42C00000)
eeObj.WriteMem32(0x006cb240,0x41400000)
end

emuObj.AddVsyncHook(widescreen)