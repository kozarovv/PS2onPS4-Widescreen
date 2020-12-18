apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (NTSC-J by Arapapa)

--680402c6 2044033c
eeObj.WriteMem32(0x00111144,0x3c034455)

--a043033c 7043023c 700403ae
eeObj.WriteMem32(0x001118d4,0x3c0343f0)

--0000a043 00007043
eeObj.WriteMem32(0x003D25E8,0x43f00000)
eeObj.WriteMem32(0x003D2B08,0x43f00000)
end

emuObj.AddVsyncHook(widescreen)