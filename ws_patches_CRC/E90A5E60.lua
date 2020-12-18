apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dynasty Warriors 2 (PAL-EUR) (SLES-50057)
--comment=Widescreen Hack (16:9) by Machiavel Dhy'v converted from ElHecht PAL-G 

-- 16:9
eeObj.WriteMem32(0x00202714,0x3c013f40)
eeObj.WriteMem32(0x00202718,0x4481f000)
eeObj.WriteMem32(0x00202728,0x461e0003)
eeObj.WriteMem32(0x003328f4,0x3faaaaab)
eeObj.WriteMem32(0x00253e04,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)