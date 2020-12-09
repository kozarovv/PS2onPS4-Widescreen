apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (NTSC-K by Arapapa)

--fov (NTSC-U 60038046 AA3F033C 233D023C ABAA6434)
eeObj.WriteMem32(0x00156be0,0x3c033fe3)
eeObj.WriteMem32(0x00156be8,0x34648e38)

--render fix (NTSC-U 003F033C 5A00013C)
eeObj.WriteMem32(0x005d0210,0x3c033f20)
end

emuObj.AddVsyncHook(widescreen)