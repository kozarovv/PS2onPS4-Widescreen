apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Valkyrie Profile 2: Silmeria (16:9) (PAL)
eeObj.WriteMem32(0x001508c8,0x3f11eb85)
end

emuObj.AddVsyncHook(widescreen)