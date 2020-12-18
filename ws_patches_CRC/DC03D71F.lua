apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Army Men - Air Attack 2 (NTSC-U)(SLUS-20004)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--fov
--803f013c 00208144 2001b1ff 
eeObj.WriteMem32(0x00140f0c,0x3c013ffa)

--zoom
--803f013c 00488144 40600146
eeObj.WriteMem32(0x001865dc,0x3c013ee0)
end

emuObj.AddVsyncHook(widescreen)