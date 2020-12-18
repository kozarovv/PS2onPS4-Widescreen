apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kaido Battle (NTSC-K)(SLKA-25063) 
--comment=Widescreen pnach by Arapapa
--Search Values are different to other nations

--Widescreen Hack 16:9
--803f023c d000a2af e400a2af
eeObj.WriteMem32(0x0013d26c,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)