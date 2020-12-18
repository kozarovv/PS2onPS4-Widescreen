apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Backyard Wrestling 2 - There Goes the Neighborhood (U)(SLUS-21043)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov 
eeObj.WriteMem32(0x00231820,0x3c013fcc)
eeObj.WriteMem32(0x00231824,0x3421ccc4)

--Zoom
--eeObj.WriteMem32(0x002319a0,0x3c013fab)
--2044013c 00108144 
eeObj.WriteMem32(0x00231804,0x3c014456)

--Render fix
--80bf013c 00608144
eeObj.WriteMem32(0x0024635c,0x3c01bff0)

eeObj.WriteMem32(0x0022bd74,0x3c013ff0)
eeObj.WriteMem32(0x0023a924,0x3c013ff0)
eeObj.WriteMem32(0x0023a970,0x3c013ff0)
eeObj.WriteMem32(0x0023b548,0x3c013ff0)
eeObj.WriteMem32(0x0023c8e8,0x3c013ff0)
eeObj.WriteMem32(0x0023f2dc,0x3c013ff0)
eeObj.WriteMem32(0x00240c08,0x3c013ff0)
eeObj.WriteMem32(0x002415fc,0x3c013ff0)
eeObj.WriteMem32(0x0024614c,0x3c013ff0)
eeObj.WriteMem32(0x00246cd8,0x3c013ff0)
eeObj.WriteMem32(0x00247a1c,0x3c013ff0)
eeObj.WriteMem32(0x0026c8b8,0x3c013ff0)

----------------------------------------------/
--Render fix
--eeObj.WriteMem32(0x0020d570,0x3c013ff0)

--ODD ZOOM xRENDER FIX(Different than Original Angle)
--eeObj.WriteMem32(0x00107b88,0x3c0144F0)

--xxxxxx
--eeObj.WriteMem32(0x00107b7c,0x3c0146f0)
--eeObj.WriteMem32(0x0020e228,0x3c0140f0)
--eeObj.WriteMem32(0x0020e170,0x3c0145f0)
--eeObj.WriteMem32(0x0020e238,0x3c0143f0)
--eeObj.WriteMem32(0x0021a210,0x3c013f60)
--eeObj.WriteMem32(0x00248fb4,0x3c06bffa)
--eeObj.WriteMem32(0x00249074,0x3c09bffa)
--eeObj.WriteMem32(0x0024925c,0x3c02bffa)
--eeObj.WriteMem32(0x0023771c,0x3c013ff0)
--eeObj.WriteMem32(0x00237844,0x3c013ff0)
--eeObj.WriteMem32(0x0023b274,0x3c013ff0)
--eeObj.WriteMem32(0x0023b2b8,0x3c013ff0)
--eeObj.WriteMem32(0x0023b540,0x3c013ff0)
end

emuObj.AddVsyncHook(widescreen)