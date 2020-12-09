apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gauntlet: Seven Sorrows (SLUS-21077)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x00446200,0x24020002)

--480p
eeObj.WriteMem32(0x00107244,0x3c050000)
eeObj.WriteMem32(0x0010724c,0x3c060050)
eeObj.WriteMem32(0x00107254,0x3c070001)
eeObj.WriteMem32(0x00107514,0x3c090010)
end

emuObj.AddVsyncHook(widescreen)