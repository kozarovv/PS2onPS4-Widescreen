apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Harry Potter to Himitsu no Heya (J)(SLPS-20234)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--493f013c da0f2134
--243f013c 00002134
eeObj.WriteMem32(0x004ca7c8,0x3c013f24)

--Y-Fov (All)
--aa3f013c abaa2134 00008144 0800e003
--e33f013c 2a8e2134 00008144 0800e003
eeObj.WriteMem32(0x004e8ef0,0x3c013fe3)
eeObj.WriteMem32(0x004e8ef4,0x34218e2a)

--Button fix
--9c3f013c c7712134
--d03f013c af972134 (1st)
eeObj.WriteMem32(0x0031cb5c,0x3c013fd0)
eeObj.WriteMem32(0x0031cb60,0x342197af)

--Font Y-Fov
eeObj.WriteMem32(0x00541894,0x3B0882F1)

--Font Y-Position
eeObj.WriteMem32(0x005418b4,0xbf000000)

--Font Zoom
eeObj.WriteMem32(0x005418BC,0x3faaaaab)

------------------------------------------------------------/
--Zoom (All)
--eeObj.WriteMem32(0x001dca04,0x3c013ec0)
--eeObj.WriteMem32(0x001dca78,0x3c013fab)

--Zoom (Game play)
--eeObj.WriteMem32(0x002ef4c4,0x3c013f40)

--Y-Fov (Game play)
--eeObj.WriteMem32(0x0020b860,0x3c013fab)
--eeObj.WriteMem32(0x002ef0d0,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)