apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kill Switch (U)(SLUS-20706)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Force turn on Widescreen
--00 00 00 00 00 00 00 00 04 00 01 00 08 00 02 00 (2nd)
eeObj.WriteMem32(0x003C0E1C,byte,00000001

--Zoom fix
--00a08144 003f013c 00608144
eeObj.WriteMem32(0x0023b594,0x3c013f25)

----------------------------------------------------/
--4:3 Y-Fov
--eeObj.WriteMem32(0x0023b574,0x3c013fe3)
--eeObj.WriteMem32(0x0023b578,0x34218ef3)

--HUD Y-Size
--eeObj.WriteMem32(0x001fefd4,0x3c013bf8)

--HUD X-Size
--eeObj.WriteMem32(0x001fefe8,0x3c013a99)
--eeObj.WriteMem32(0x001fefec,0x34219dcb)

--HUD X-Position
--eeObj.WriteMem32(0x001ff010,0x3c01c254)
end

emuObj.AddVsyncHook(widescreen)