apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Drakengard (J) (SLPM_652.66) 
--comment=Widescreen Hack by Hyakki (pnach by Arapapa)

eeObj.WriteMem32(0x003A5090,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)