apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE SmackDown! vs Raw 2006 (K)(SLKA-25318)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f013c 00008144 2d20a003
--eeObj.WriteMem32(0x0011e980,0x3c013fab)

--/Y-Fov
--2044023c 00088244 00a08344
--eeObj.WriteMem32(0x002242c8,0x3c024455)

--X-Fov Locker Room
--803f033c 0145023c
--eeObj.WriteMem32(0x00224344,0x3c033f40)


eeObj.WriteMem32(0x0011e95c,0x3c013f40)
eeObj.WriteMem32(0x0011e960,0x44810000)
eeObj.WriteMem32(0x0011e968,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)