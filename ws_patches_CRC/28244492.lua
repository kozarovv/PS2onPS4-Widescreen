apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= JoJo no Kimyouna Bouken Phantom Blood (NTSC-J) (SLPS-25686) Widescreen Hack by Goshorai
eeObj.WriteMem32(0x0022ABC0, extended, 3F266666
end

emuObj.AddVsyncHook(widescreen)