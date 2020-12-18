apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE Smackdown! Shut Your Mouth (U)(SLUS-20483)
--comment=Widescreen hack by ElHecht (NTSC-U by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x001035e4,0x3c013f40)
eeObj.WriteMem32(0x001035f0,0x44810000)
eeObj.WriteMem32(0x001035f4,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)