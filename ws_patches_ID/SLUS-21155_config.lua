apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Codename - Kids Next Door - Operation - V.I.D.E.O.G.A.M.E. (U)(SLUS-21155)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
--00 00 80 3F 00 00 80 BF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 E0 01 00 00 50 00 00 0E
eeObj.WriteMem32(0x00C1a9a4,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)