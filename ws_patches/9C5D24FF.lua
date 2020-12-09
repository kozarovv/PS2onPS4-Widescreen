apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle = NBA Street Vol. 2 (K)(SLKA-25027)
--comment = Widescreen Hack by Ko81e24wy (NTSC-K by Arapapa)

-- Widescreen 16:9
eeObj.WriteMem32(0x00956EE0,0x3F400000)
eeObj.WriteMem32(0x00956F18,0x3FA66666)
eeObj.WriteMem32(0x00956F1C,0x3FA66666)
end

emuObj.AddVsyncHook(widescreen)