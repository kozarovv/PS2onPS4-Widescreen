apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen 16:9

--0000803f d7a3f03e 00080008 (2nd)
eeObj.WriteMem32(0x00346B34,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)