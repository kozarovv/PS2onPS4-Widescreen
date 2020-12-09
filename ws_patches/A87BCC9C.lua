apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Eureka Seven-Vol 1 (SLPS_25554)
--comment=Widescreen Hack (NTSC-J by Arapapa)


--680402c6 2044033c
eeObj.WriteMem32(0x00111248,0x3c034455)

--a043033c 7043023c 700403ae
eeObj.WriteMem32(0x001119c4,0x3c0343f0)

--0000a043 00007043
eeObj.WriteMem32(0x003A7F08,0x43f00000)
eeObj.WriteMem32(0x003A8428,0x43f00000)
end

emuObj.AddVsyncHook(widescreen)