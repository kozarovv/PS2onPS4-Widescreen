apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=River King - A Wonderful Journey (NTSC-U)(SLUS-21275)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x00404df4,0x3c013f40)
eeObj.WriteMem32(0x00404df8,0x44810000)
eeObj.WriteMem32(0x00404e00,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)