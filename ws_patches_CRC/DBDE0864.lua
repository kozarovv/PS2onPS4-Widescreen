apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=King of Colosseum (Green) - Zero-One Disc (J)(SLPM-65206)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9
--X-Fov
--803f013c 00608144 00a08044
eeObj.WriteMem32(0x001dee18,0x3c013f40)

--803f013c 00608144 c6730046
eeObj.WriteMem32(0x0022dfb4,0x3c013f40)

--803f013c 00608144 0801628c
eeObj.WriteMem32(0x00244ac0,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)