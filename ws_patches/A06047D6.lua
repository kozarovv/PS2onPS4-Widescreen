apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Obscure (SLUS-20777)

--gameplay by ElHecht
eeObj.WriteMem32(0x00249790,0x3c023f19)
eeObj.WriteMem32(0x00249794,0x34428000)
eeObj.WriteMem32(0x00249798,0x44820000)

--alternate gameplay value by nemesis2000
--eeObj.WriteMem32(0x003a418c,0x46060202)
--eeObj.WriteMem32(0x003a53f4,0x3c01bec0)
--eeObj.WriteMem32(0x003a53fc,0x44813000)

--rfix by ElHecht
eeObj.WriteMem32(0x001c0794,0x3c033f2b)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x0030fe74,0x24067100)
eeObj.WriteMem32(0x0030fecc,0x24058f00)
end

emuObj.AddVsyncHook(widescreen)