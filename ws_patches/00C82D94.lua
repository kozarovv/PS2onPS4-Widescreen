apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

--16:9
eeObj.WriteMem32(0x003753d4,0x3c013f40)
eeObj.WriteMem32(0x003753e0,0x4481f000)
eeObj.WriteMem32(0x003753e8,0x461ea503)
end

emuObj.AddVsyncHook(widescreen)