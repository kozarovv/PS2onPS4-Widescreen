apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dr. Muto (U)(SLUS-20458)
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0010045c,0x3c013fcc)
eeObj.WriteMem32(0x00100460,0x3421cccd)
eeObj.WriteMem32(0x00101b24,0x3c013f41)
eeObj.WriteMem32(0x00101b28,0x34219d7d)
end

emuObj.AddVsyncHook(widescreen)