apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

--Widescreen hack 16:9

--803f043c 00688444 9c45023c
eeObj.WriteMem32(0x0028d738,0x3c043f40)
--803f023c 00688244 7f47023c
eeObj.WriteMem32(0x00282564,0x3c023f40)
--eeObj.WriteMem32(0x00324530,0x3c023f40)

--Status screen and souls information. plus optional font size reduction (disabled by default) by sergx12
eeObj.WriteMem32(0x0039f340,0x3c023f40)
eeObj.WriteMem32(0x003d43c4,0x3c023f40)
eeObj.WriteMem32(0x003ecfec,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)