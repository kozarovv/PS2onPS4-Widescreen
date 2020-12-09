apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mary-Kate & Ashley - Sweet Sixteen - Licensed to Drive (U) [SLUS-20603]
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--4c3f023c 00088344 cdcc4234 (1st) -> 193f023c 00088344 9a994234
eeObj.WriteMem32(0x001918f0,0x3c023f19)
eeObj.WriteMem32(0x001918f8,0x3442999a)

--Render Fix
--803f023c 88246470(2nd)
eeObj.WriteMem32(0x001cf4f0,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)