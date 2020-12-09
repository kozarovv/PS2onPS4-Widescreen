apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NBA Street Vol. 2 [PAL-M2] (SLES_514.81)
--comment=Widescreen Hack by Ko81e24wy

--Gameplay 16:9
eeObj.WriteMem32(0x008D6AA0,0x3F400000)
eeObj.WriteMem32(0x008D6AD8,0x3FA66666)
eeObj.WriteMem32(0x008D6ADC,0x3FA66666)
end

emuObj.AddVsyncHook(widescreen)