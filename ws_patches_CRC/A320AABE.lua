apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Indigo Prophecy (K)  (SLKA_253.09)
--comment=Widescreen patch (pnach NTSC-J by Arapapa)

eeObj.WriteMem32(0x0020a7c0,0x3c013fe3)
eeObj.WriteMem32(0x0020a7c4,0x34218e38)
eeObj.WriteMem32(0x0020a7c8,0x44810000)
end

emuObj.AddVsyncHook(widescreen)