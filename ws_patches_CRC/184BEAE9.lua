apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom (ELF)
--003f013c 00008144 42080046 (8th from bottom)
eeObj.WriteMem32(0x0036918c,0x3c013f2b)
eeObj.WriteMem32(0x002247b4,0x3c013f40)

--Y-Fov (Memory)
--6666a63f da0f4940 (3rd)
eeObj.WriteMem32(0x0079E96C,0x3FDDDDBA)
end

emuObj.AddVsyncHook(widescreen)