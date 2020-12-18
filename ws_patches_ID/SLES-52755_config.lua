apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Blood Will Tell: Tezuka Osamu's Dororo SLES_527.55
--comment=Widescreen Hack
eeObj.WriteMem32(0x001b8e0c,0x3c023f06)
eeObj.WriteMem32(0x001b8e14,0x34426666)
end

emuObj.AddVsyncHook(widescreen)