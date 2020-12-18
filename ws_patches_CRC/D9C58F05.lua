apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NBA Ballers (SLUS-20541)
--comment=Widescreen Patch (16:9) by Monsterjamp

--FOV
eeObj.WriteMem32(0x01C4E7A0,0x40400000)

--This value prevents objects disappearing
--from the sides of the screen
eeObj.WriteMem32(0x01C4E798,0x3ECCCCCD)
end

emuObj.AddVsyncHook(widescreen)