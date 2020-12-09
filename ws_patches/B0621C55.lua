apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fighting Angels [PAL] (SLES_534.08)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9    
eeObj.WriteMem32(0x0019135c,0x3c013f40)
eeObj.WriteMem32(0x00191360,0x44810000)
eeObj.WriteMem32(0x00191368,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)