apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Sangoku Musou (K)(SLPM-64501)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--00 00 80 3F 01 3C 00 B8 81 44 2D A0 00 00 14 01
eeObj.WriteMem32(0x002D668E,0x3FAAAAAB)

--00 00 80 3F 01 3C 00 B8 81 44 2D A8 00 00 2D 98
eeObj.WriteMem32(0x002D6690,0x3c013fAB)

--00 00 80 3F 00 00 00 00 F0 27 26 42 00 00 00 00 (1st)
eeObj.WriteMem32(0x0031374C,0x3FAAAAAB)

--00 00 80 3F 00 00 00 00 00 00 00 00 00 00 80 3F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 3F 00 00 00 00 00 00 00 00 00 00 80 3F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
eeObj.WriteMem32(0x00313868,0x3FAAAAAB)

--00 00 80 3F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 3F 00 00 00 00 00 00 00 00 00 00 80 3F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 FA 43
eeObj.WriteMem32(0x00313874,0x3FAAAAAB)

--00 00 80 3F 00 00 00 00 00 00 00 00 00 00 80 3F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 FA 43 
eeObj.WriteMem32(0x00313888,0x3FAAAAAB)

--00 00 80 3F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 FA 43
eeObj.WriteMem32(0x00313894,0x3FAAAAAB)

--00 00 80 3F 15 85 F8 44(?)
eeObj.WriteMem32(0x003138EC,0x3FAAAAAB)

--00 00 80 3F 00 70 04 00 00 00 00 00 00 03 00 00
eeObj.WriteMem32(0x003139EC,0x3FAAAAAB)

--00 00 80 3F 00 00 80 3F 00 00 80 3F CD CC 8C 3F
eeObj.WriteMem32(0x0031C80C,0x3FAAAAAB)
eeObj.WriteMem32(0x0031C810,0x3FAAAAAB)
eeObj.WriteMem32(0x0031C814,0x3FAAAAAB)



----------------------------------------------

--Zoom
--eeObj.WriteMem32(0x00202534,0x3c014370)

--Render fix
eeObj.WriteMem32(0x00247ec8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)