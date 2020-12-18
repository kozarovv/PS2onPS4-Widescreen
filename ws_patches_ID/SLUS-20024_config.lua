apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Blood Omen 2: The Legacy of Kain Series (SLUS-20024)

--Widescreen
eeObj.WriteMem32(0x00312b08,0x3C013FE3)
eeObj.WriteMem32(0x00312b0c,0x34218E38)
--Black Borders Fix
eeObj.WriteMem32(0x002d443c,0x00000000)
--FMV Fix
eeObj.WriteMem32(0x002eb280,0x240575e0)
eeObj.WriteMem32(0x002eb298,0x240a1440)
end

emuObj.AddVsyncHook(widescreen)