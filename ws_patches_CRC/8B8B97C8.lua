apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dragon Shadow Spell (J)(SLPS-25735)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9


--Zoom (In Battle Field)
eeObj.WriteMem32(0x0011dce4,0x3c023fab)
--eeObj.WriteMem32(0x0011dc80,0x3c034300)
--eeObj.WriteMem32(0x002d0b80,0x3c023fc0)
--Y-Fov (In Battle Field)
eeObj.WriteMem32(0x0011de44,0x3c033fab)

--2D Characters X-Position
eeObj.WriteMem32(0x001b8450,0x3c024350)
eeObj.WriteMem32(0x001b83b0,0x3c02c350)

--2D Characters X-Position (In the Hallway of Phantom Ship)
eeObj.WriteMem32(0x002d3568,0x3c024354)
eeObj.WriteMem32(0x002d3580,0x3c02c354)

--2D Characters's Shadow Position when conversation at the Deck
eeObj.WriteMem32(0x001b83f4,0x3c02c358)

--2D Characters Position (Chapter 8: After Earthquake in the RA's Pyramid Garden)
eeObj.WriteMem32(0x001b7dfc,0x3c02c350)
eeObj.WriteMem32(0x001b7eac,0x3c024350)

--2D Characters X-Fov
eeObj.WriteMem32(0x00A021F0,0x3f400000)
eeObj.WriteMem32(0x00A024E0,0x3f400000)
 
--2D Characters X-Fov (In the Hallway of Phantom Ship)
eeObj.WriteMem32(0x01A26750,0x3f400000)
eeObj.WriteMem32(0x01A265D0,0x3f400000)

--2D Characters's Shadow X-Fov when conversation at the Deck
eeObj.WriteMem32(0x001b8334,0x3c023f41)
eeObj.WriteMem32(0x001b8338,0x3442eb85)

--Fix Background Picture of Meihensu Area 51
eeObj.WriteMem32(0x00405724,0x40000000)



--------------------------------------------------------------------
--X-Fov (All of Scene except battle) 
--(Needs a fix of characters Icon in the battle field and render fix)
--4c3f023c 803f033c cdcc4234
--eeObj.WriteMem32(0x0011d968,0x3c023f19)
--eeObj.WriteMem32(0x0011d970,0x3442999a)

--2D Characters X-Fov (Needs fix a Text Box)
--eeObj.WriteMem32(0x0034bf00,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)