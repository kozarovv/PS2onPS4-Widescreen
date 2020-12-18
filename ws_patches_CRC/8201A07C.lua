apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9 (Memory Hack)
--0000803f d7a3703f
eeObj.WriteMem32(0x005FBB58,0x3f400000)

--Rendering Distance (cause a incorrect graphic of HUD mode)
--f0ff7f4b 0000803f d7a3703f
--eeObj.WriteMem32(0x005FBB54,0x4cf00000)

--Render Fix (ELF hack)
--003f013c 00008144 82300146
eeObj.WriteMem32(0x0015a008,0x3c013f40)
eeObj.WriteMem32(0x0015aa5c,0x3c013f40)

--803f013c 00188144 02300046
eeObj.WriteMem32(0x00159fcc,0x3c013f40)

--803f013c 00088144 02300046
eeObj.WriteMem32(0x0015a018,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)