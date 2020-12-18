apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fatal Frame (Project Zero) (K)(SCPS-56008)
--comment=16:9 widescreen hack by nemesis2000, pgert and devina40 (NTSC-K by Arapapa)

--16:9 widescreen by nemesis2000
eeObj.WriteMem32(0x00189E54,0x3C013F40)

--cutscenes by pgert
eeObj.WriteMem32(0x001856D4,0x3C013F40)

--Cut-scene render fix
--0045013c 00208144 280040e6
eeObj.WriteMem32(0x001856c8,0x3c0145C0)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x001822B8,0x24027100)
eeObj.WriteMem32(0x001822C8,0x24027100)
eeObj.WriteMem32(0x001822D0,0x24091E00)

--Lens Flare's fix
--Modified based on PAL (0,875 instead of 0,75) - better.   
eeObj.WriteMem32(0x00137154,0x3C013F12)
eeObj.WriteMem32(0x00135b10,0x3C01428C)
eeObj.WriteMem32(0x00135bf4,0x3C01410C)
eeObj.WriteMem32(0x00135bbc,0x3C014128)
eeObj.WriteMem32(0x00135b78,0x3C0141A8)

--Remove effects (Memory Hack)
--6666f643 0000803f 0000803f
--eeObj.WriteMem32(0x0035210C,0x00000000)
--00002044 0000e043 0000803f 0000803f 00000000 00000000 (10)
--eeObj.WriteMem32(0x0035258C,0x00000000)
--00002044 0000e043 0000803f 0000803f 00000000 00000000 (8)
--eeObj.WriteMem32(0x0035241C,0x00000000)

--No interlacing by asasega
eeObj.WriteMem32(0x00234e64,0x00000000)

--HUD Y-Fov
--eeObj.WriteMem32(0x0015dd74,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)