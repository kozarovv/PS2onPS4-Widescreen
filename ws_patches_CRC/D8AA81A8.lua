apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- --comment=Gundam Musou Special (SLPM-66940) (NTSC/Japan) 16:9 Widescreen Hack by Wyngale
--comment=Gundam Musou Special (NTSC-J) 16:9
eeObj.WriteMem32(0x004FCAD8,0x3F19999A)
end

emuObj.AddVsyncHook(widescreen)