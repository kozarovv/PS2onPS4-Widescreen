apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=FlatOut SLUS_209.01
--comment=Widescreen hack 
eeObj.WriteMem32(0x001ad904,0x3c013fab)
--eeObj.WriteMem32(0x0028ee60,0x3C013F19)
eeObj.WriteMem32(0x0018e380,0x3c013fab)
eeObj.WriteMem32(0x0031a934,0x3ee80000)
end

emuObj.AddVsyncHook(widescreen)