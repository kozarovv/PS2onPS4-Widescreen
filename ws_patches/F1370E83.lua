apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Enter the Matrix [PAL-M5] (SLES_512.03)
--comment=Widescreen pnach by El_Patas

--Built-in widescreen 16:9 
eeObj.WriteMem32(0x001CFA78,0xA2740BCC)
end

emuObj.AddVsyncHook(widescreen)