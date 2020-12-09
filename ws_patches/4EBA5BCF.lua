apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


--Y-Fov
--e0430f3c 00404d34 803f0e3c
eeObj.WriteMem32(0x001610c8,0x3c0f43ab)

--Zoom
--0044023c b0ffbd27
eeObj.WriteMem32(0x00128ef0,0x3c0243C0)
--eeObj.WriteMem32(0x00128fd0,0x3c024500)

------------------------------------------------------
--xxxxxx
--eeObj.WriteMem32(0x00129004,0x3c023fc9)
--eeObj.WriteMem32(0x00129160,0x3c033fc9)
--eeObj.WriteMem32(0x0016e890,0x3c033fc9)
--eeObj.WriteMem32(0x0016efa8,0x3c023fc9)
--eeObj.WriteMem32(0x00215a64,0x3c023fc9)
--eeObj.WriteMem32(0x00224ce0,0x3c023fc9)
--eeObj.WriteMem32(0x002327d8,0x3c053fc9)
--eeObj.WriteMem32(0x00232970,0x3c053fc9)
--eeObj.WriteMem32(0x00232ad4,0x3c023fc9)
--eeObj.WriteMem32(0x002339bc,0x3c023fc9)
--eeObj.WriteMem32(0x00233a30,0x3c043fc9)
--eeObj.WriteMem32(0x002379f0,0x3c033fc9)
--eeObj.WriteMem32(0x002383f0,0x3c033fc9)
--eeObj.WriteMem32(0x002384d4,0x3c033fc9)
--eeObj.WriteMem32(0x002387f4,0x3c043fc9)
--eeObj.WriteMem32(0x00238c10,0x3c043fc9)
--eeObj.WriteMem32(0x00238f50,0x3c023fc9)
--eeObj.WriteMem32(0x002392c0,0x3c043fc9)
--eeObj.WriteMem32(0x00239564,0x3c043fc9)
--eeObj.WriteMem32(0x0023b670,0x3c033fc9)
--eeObj.WriteMem32(0x0023b814,0x3c023fc9)
--eeObj.WriteMem32(0x0023b8d8,0x3c033fc9)
--eeObj.WriteMem32(0x0023bac8,0x3c023fc9)
--eeObj.WriteMem32(0x0020f9bc,0x3c034100)
--eeObj.WriteMem32(0x00232f5c,0x3c024220)
--eeObj.WriteMem32(0x00233030,0x3c0342f0)
end

emuObj.AddVsyncHook(widescreen)