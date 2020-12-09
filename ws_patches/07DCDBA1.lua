apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Nemesis (NTSC-J by Arapapa)

--803f013c 00608144  -- ab3f013c 00608144 
eeObj.WriteMem32(0x0022d360,0x3c013fab)
eeObj.WriteMem32(0x0022d798,0x3c013fab)

--00000000 20008046 02001546 (Last) -- 403f013c 20008046 02001546
eeObj.WriteMem32(0x003c8198,0x3c013f40)
eeObj.WriteMem32(0x003c81a8,0x4481f000)

--06030046 (312th) -- 03031e46 (313th)
eeObj.WriteMem32(0x003c8274,0x461e0303)
eeObj.WriteMem32(0x003c8960,0x461e0303)
eeObj.WriteMem32(0x004140d4,0x461e0303)

--03004230 1000bfdf -- 02000224 1000bfdf 
eeObj.WriteMem32(0x0027c068,0x24020002)

--a03f013c 00088144 00000000 -- ab3f013c 00088144 00000000
eeObj.WriteMem32(0x0022d340,0x3c013fab)
eeObj.WriteMem32(0x0022d778,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)