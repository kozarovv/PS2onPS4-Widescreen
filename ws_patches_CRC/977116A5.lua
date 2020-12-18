apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Phantom Brave [PAL] (SLES_529.51)
--comment=Widescreen hack by El_Patas
 
--Gameplay 16:9
eeObj.WriteMem32(0x00105664,0x3C013F40)
eeObj.WriteMem32(0x00105668,0x44810000)
eeObj.WriteMem32(0x00105670,0x4600C602)
end

emuObj.AddVsyncHook(widescreen)