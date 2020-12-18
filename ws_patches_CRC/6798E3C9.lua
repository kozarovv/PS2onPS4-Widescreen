apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-U by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x003173c0,0x443B8000)
end

emuObj.AddVsyncHook(widescreen)