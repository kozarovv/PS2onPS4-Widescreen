apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen
eeObj.WriteMem32(0x003649C0,0x3FAAAAAA)
eeObj.WriteMem32(0x003649D0,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)