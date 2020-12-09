apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Megami Tensei - Devil Summoner 2 (SLPM_666.79)
--comment=Widescreen Hack by Arapapa and Red_Tv

--fields and battles
eeObj.WriteMem32(0x00427064,0x3fc65461)

--event
eeObj.WriteMem32(0x00427414,0x3fc65461)

--black borders's fix (optional)
--eeObj.WriteMem32(0x00116918,0x24040000)
--eeObj.WriteMem32(0x00106BE8,0xa380a213)
--eeObj.WriteMem32(0x001069CC,0x2404FF00)

--progressive scan by Red_Tv
eeObj.WriteMem32(0x003cd55c,0x00000000)
eeObj.WriteMem32(0x003ecabc,0x24110000)
eeObj.WriteMem32(0x003ecac0,0x24120050)
eeObj.WriteMem32(0x003ecac4,0x24020001)
eeObj.WriteMem32(0x003d1490,0x00000000)

--60 FPS by Red_Tv
eeObj.WriteMem32(0x0011e168,0x10000006)
end

emuObj.AddVsyncHook(widescreen)