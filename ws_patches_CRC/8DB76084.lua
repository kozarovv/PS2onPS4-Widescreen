apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=DreamWorks & Aardman Flushed Away (U)(SLUS-21484)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--003f013c 00608144 8e3c013c (1st)
eeObj.WriteMem32(0x001ca3bc,0x3c013ed6)

--Zoom
--003f013c 00008144 4000b4e7
eeObj.WriteMem32(0x0027ebec,0x3c013f1c)
end

emuObj.AddVsyncHook(widescreen)