apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Metal Gear Solid 2 - Son Of Liberty (K)
--comment=Widescreen Hack (pnach NTSC-K by Arapapa)

eeObj.WriteMem32(0x0011f0e8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)