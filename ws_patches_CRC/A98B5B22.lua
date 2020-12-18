apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Raw Danger! [PAL] (SLES_545.87)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x003A8360,0x43E00000)
eeObj.WriteMem32(0x003A8380,0x43E00000)
eeObj.WriteMem32(0x0048C12C,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)