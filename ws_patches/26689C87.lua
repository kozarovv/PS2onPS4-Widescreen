apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch (pnach NTSC-J by Arapapa)

eeObj.WriteMem32(0x0057E994,0x3F100000)
end

emuObj.AddVsyncHook(widescreen)