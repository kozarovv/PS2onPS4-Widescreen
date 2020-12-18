apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x00112F74,0x3C014340)
eeObj.WriteMem32(0x00112F94,0x3C013FF1)
eeObj.WriteMem32(0x00112F98,0x3421C71C)
end

emuObj.AddVsyncHook(widescreen)