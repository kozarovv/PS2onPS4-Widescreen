apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Rogue Galaxy - Director's Cut (J) (SCPS_170.13)
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

--gameplay
eeObj.WriteMem32(0x001c5aa0,0x3c023f10)

--compass
eeObj.WriteMem32(0x0037413c,0x3c023f10)

--black border fix
eeObj.WriteMem32(0x00261050,0x3c020000)

--FMV's fix
eeObj.WriteMem32(0x001d4a3c,0x24060000)
eeObj.WriteMem32(0x001D4A8C,0x240201c0)

--hor FMV's fix
--eeObj.WriteMem32(0x001d4a2c,0x24030040)
--eeObj.WriteMem32(0x001d4a88,0x240301c0)
end

emuObj.AddVsyncHook(widescreen)