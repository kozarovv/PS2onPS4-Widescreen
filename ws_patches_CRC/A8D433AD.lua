apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gun Survivor 4 - Biohazard - Heroes Never Die (K)(SLKA-25038)
--comment=Widescreen hack by Little Giant (NTSC-K by Arapapa)

eeObj.WriteMem32(0x00108b74,0x3c013f40)
eeObj.WriteMem32(0x00108b78,0x44810000)
eeObj.WriteMem32(0x00108b80,0x4600c602)

eeObj.WriteMem32(0x0022fa20,0x3c0143d6)
end

emuObj.AddVsyncHook(widescreen)