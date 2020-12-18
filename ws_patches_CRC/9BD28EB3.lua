apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Sangoku Musou 2 (K)(SLPM-67523)
--comment=Widescreen hack by 99skull

--16:9 widescreen hack 

--f043023c 60088046
eeObj.WriteMem32(0x001752E8,0x3C0243B4)

--9c0041c4 4940023c db0f4234 00108244 00000000
eeObj.WriteMem32(0x001868FC,0x3C024082)

--a043023c 00088244 00000000 03080046
eeObj.WriteMem32(0x00186B7C,0x3C024370)

--f043023c 60018046
eeObj.WriteMem32(0x00186D2C,0x3C0243B4)

--803f023c 00008244 00000000 03001746 (1st)
eeObj.WriteMem32(0x0025FE98,0x3C023FAA)
eeObj.WriteMem32(0x0025FE9C,0x3442AAAB)
eeObj.WriteMem32(0x0025FE98,0x44820000)
--
eeObj.WriteMem32(0x0025FEAC,0x3C023FAA)
eeObj.WriteMem32(0x0025FEB0,0x3442AAAB)
eeObj.WriteMem32(0x0025FEB4,0x44820000)
end

emuObj.AddVsyncHook(widescreen)