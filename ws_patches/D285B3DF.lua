apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kaido Battle 2 (NTSC-K)(SLKA-25146) 
--comment=Widescreen pnach by Arapapa
--Search Values are different to other nations

--Widescreen Hack 16:9
--803f023c 4000a2af 80bf023c
eeObj.WriteMem32(0x00149290,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)