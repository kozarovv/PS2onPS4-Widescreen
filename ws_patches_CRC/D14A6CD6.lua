apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Marvel vs Capcom 2 PAL (SLES_511.74)
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00415254,0x3C023FAA)
eeObj.WriteMem32(0x003DEA30,0xAC83003C)
eeObj.WriteMem32(0x003DEA34,0x3C033F40)
eeObj.WriteMem32(0x003DEA38,0x03E00008)
eeObj.WriteMem32(0x003DEA3C,0xAC830000)
eeObj.WriteMem32(0x003DE3A0,0x3C023FE3)



end

emuObj.AddVsyncHook(widescreen)