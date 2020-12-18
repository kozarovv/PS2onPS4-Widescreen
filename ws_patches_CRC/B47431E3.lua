apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Sims 2 - Pets (NTSC-K)(SLKA-25399)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9
--aa3f013c abaa2134 00008144 0800e003 00000000 00000000 0800e003
eeObj.WriteMem32(0x0042ac00,0x3c013fe3)
eeObj.WriteMem32(0x0042ac04,0x34218e21)

--Fov and Zoom (ELF hack) 
--8000a2c7 803f013c 00008144 00000000 03000146
--eeObj.WriteMem32(0x003199e0,0x3c013fab)

--2000a0c7 803f013c 00008144 00000000 03000146 42100046
--eeObj.WriteMem32(0x0046776c,0x3c013f40)

--Menu Box and Text Fix (Memory Hack)
--0000803f 0000d844 0000e444 00001445
--eeObj.WriteMem32(0x01A6825C,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)