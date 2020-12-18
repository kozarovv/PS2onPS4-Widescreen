apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch by BloodRaynare

-- 16:9
eeObj.WriteMem32(0x00100c34,0x3c013f40)
eeObj.WriteMem32(0x002558b4,0x3c093f40)
eeObj.WriteMem32(0x001010d0,0x0809562d)
eeObj.WriteMem32(0x001010d4,0x00000000)
eeObj.WriteMem32(0x002558bc,0x4489f000)
eeObj.WriteMem32(0x002558c0,0x461e0843)
eeObj.WriteMem32(0x002558c4,0x46000843)
eeObj.WriteMem32(0x002558c8,0xe6200448)
eeObj.WriteMem32(0x002558cc,0x08040435)

--Airport Garage helicopter rotor glitch fix
eeObj.WriteMem32(0x00100be0,0x3c013f40)
eeObj.WriteMem32(0x002558b8,0x3c093f40)
end

emuObj.AddVsyncHook(widescreen)