apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (NTSC-K by Arapapa)

--Widescreen hack 16:9 
eeObj.WriteMem32(0x004EBAD4,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)