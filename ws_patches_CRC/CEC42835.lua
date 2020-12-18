apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dave Mirra Freestyle BMX 2 (SLUS-20159)
--comment=Widescreen patch by BloodRaynare

-- 16:9
eeObj.WriteMem32(0x00100c58,0x3c013f40)
eeObj.WriteMem32(0x000fffd4,0x3c093f40)
eeObj.WriteMem32(0x001010f0,0x0803fff5)
eeObj.WriteMem32(0x001010f4,0x00000000)
eeObj.WriteMem32(0x000fffdc,0x4489f000)
eeObj.WriteMem32(0x000fffe0,0x461e0843)
eeObj.WriteMem32(0x000fffe4,0x46000843)
eeObj.WriteMem32(0x000fffe8,0xe6200448)
eeObj.WriteMem32(0x000fffec,0x0804043d)

--Airport Garage helicopter rotor glitch fix
eeObj.WriteMem32(0x00100c04,0x3c013f40)
eeObj.WriteMem32(0x000fffd8,0x3c093f40)
end

emuObj.AddVsyncHook(widescreen)