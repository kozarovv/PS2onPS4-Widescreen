apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (NTSC-J by Arapapa)

--Widescreen hack 16:9

--2044023c 0045033c 
eeObj.WriteMem32(0x00181afc,0x3c024455)
eeObj.WriteMem32(0x00CCCD10,0x44BFFF40)
end

emuObj.AddVsyncHook(widescreen)