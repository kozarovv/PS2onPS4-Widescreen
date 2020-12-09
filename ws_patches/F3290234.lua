apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Garfield: Lasagna World Tour [PAL-M2-Fre-Neth] (SLES_550.43)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001C3514,0x3C033F40)
end

emuObj.AddVsyncHook(widescreen)