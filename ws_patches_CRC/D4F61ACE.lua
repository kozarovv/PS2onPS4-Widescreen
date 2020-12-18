apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Pro Yakyuu Spirits 2010 (SLPM_552.52) (NTSC-J)
--comment=16:9 widescreen hack
--16:9 widescreen hack by 99skull
eeObj.WriteMem32(0x0014C4C8,0x3C013F2A)
eeObj.WriteMem32(0x0014C500,0x44819800)
eeObj.WriteMem32(0x0014C50C,0x46009802)
eeObj.WriteMem32(0x0014C6A8,0x3C053FAA)
end

emuObj.AddVsyncHook(widescreen)