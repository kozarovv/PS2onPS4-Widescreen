apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Crash Bandicoot - Return of The Demon King (K)(SLPM-64513)
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
--42c81446 140074e6 380060e6
eeObj.WriteMem32(0x00110830,0x0805b3d0)

eeObj.WriteMem32(0x0016cf40,0x4614c842)
eeObj.WriteMem32(0x0016cf44,0x3c013f40)
eeObj.WriteMem32(0x0016cf48,0x4481f000)
eeObj.WriteMem32(0x0016cf4c,0x461e0842)
eeObj.WriteMem32(0x0016cf50,0x00000000)
eeObj.WriteMem32(0x0016cf54,0x0804420d)


--Render fix
--803f013c 00108144 32000246
eeObj.WriteMem32(0x00112fe8,0x3c013f40)

------------------------------------------------
--Zoom
--eeObj.WriteMem32(0x00110818,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)