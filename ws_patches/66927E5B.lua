apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (pnach NTSC-K by Arapapa)

eeObj.WriteMem32(0x004AC3C0,0x3F400000)
--eeObj.WriteMem32(0x0035C5F8,0x3F990000)
--eeObj.WriteMem32(0x005cdb30,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)