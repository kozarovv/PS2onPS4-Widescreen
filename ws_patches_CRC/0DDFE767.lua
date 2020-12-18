apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack

--hor fov (default = 3F800000, 21:9 = 3FC00000)

eeObj.WriteMem32(0x002C0A70,0x3FA00000)

--60 fps (from https:--www.reddit.com/r/emulation/--comments/5tmge2/ps2_60fps_codes_list/)
--eeObj.WriteMem32(0x002C0A74,0x00000001)
end

emuObj.AddVsyncHook(widescreen)