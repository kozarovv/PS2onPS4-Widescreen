apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dawn of Mana (J) (SLPM_66576) 
--comment= Widescreen Hack (16:9) (NTSC-U) (pavachan) (pnach NTSC-J by Arapapa)

eeObj.WriteMem32(0x00A07740,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)