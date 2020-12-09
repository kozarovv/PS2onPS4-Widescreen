apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Monster Farm 4 [NTSC-J] (SLPS-25263)
--comment=Widescreen Hack by Little Gaint

eeObj.WriteMem32(0x002ebf74,0x3c013f40)
eeObj.WriteMem32(0x002ebf78,0x44810000)
eeObj.WriteMem32(0x002ebf80,0x4600c602)

eeObj.WriteMem32(0x008C5DE4,0x43E00000)
end

emuObj.AddVsyncHook(widescreen)