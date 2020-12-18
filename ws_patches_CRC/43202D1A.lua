apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by synce (pnach NTSC-K by Arapapa)

eeObj.WriteMem32(0x0037F7E4,0x3FC6D395)
end

emuObj.AddVsyncHook(widescreen)