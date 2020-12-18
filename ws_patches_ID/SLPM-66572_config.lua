apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=LEGO Star Wars II - The Original Trilogy (J)(SLPM-66572)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--403f013c 00088144 (last)
eeObj.WriteMem32(0x0035314c,0x3c013f10)

--Zoom
--803f013c 00088144 280015e6
eeObj.WriteMem32(0x0012a2a0,0x3c013fab)
--eeObj.WriteMem32(0x00175044,0x3c013ec0)


--Render fix (Top and bottom)
--803f013c 00108144 00000000  (1st and 2nd)  
eeObj.WriteMem32(0x00174fd0,0x3c013f40)

--Render fix (Left and Right)
eeObj.WriteMem32(0x00174f54,0x3c013f40)

----------------------------------------------------------/

--eeObj.WriteMem32(0x001750b0,0x3c013fab)

--803f013c 00108144 0000a1c4 (3rd)
--eeObj.WriteMem32(0x001104cc,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)