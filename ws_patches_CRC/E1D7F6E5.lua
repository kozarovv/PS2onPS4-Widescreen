apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Backyard Wrestling 2 - There Goes the Neighborhood (E)(SLES-52686)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov 
eeObj.WriteMem32(0x00231728,0x3c013fcc)
eeObj.WriteMem32(0x0023172c,0x1392ccc4)

--Zoom
eeObj.WriteMem32(0x0023170c,0x3c014456)

--Render fix
eeObj.WriteMem32(0x00246264,0x3c01bff0)

eeObj.WriteMem32(0x0022bc7c,0x3c013ff0)
eeObj.WriteMem32(0x002393d0,0x3c013ff0)
eeObj.WriteMem32(0x0023941c,0x3c013ff0)
eeObj.WriteMem32(0x0023a82c,0x3c013ff0)
eeObj.WriteMem32(0x0023a878,0x3c013ff0)
eeObj.WriteMem32(0x0023b450,0x3c013ff0)
eeObj.WriteMem32(0x0023c7f0,0x3c013ff0)
eeObj.WriteMem32(0x0023f1e4,0x3c013ff0)
eeObj.WriteMem32(0x00240b10,0x3c013ff0)
eeObj.WriteMem32(0x00241504,0x3c013ff0)
eeObj.WriteMem32(0x00246054,0x3c013ff0)
eeObj.WriteMem32(0x00246be0,0x3c013ff0)
eeObj.WriteMem32(0x00247924,0x3c013ff0)
eeObj.WriteMem32(0x0026c7c0,0x3c013ff0)
end

emuObj.AddVsyncHook(widescreen)