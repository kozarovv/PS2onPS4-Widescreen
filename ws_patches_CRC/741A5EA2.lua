apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ThirteenAG (NTSC-K by Arapapa)

--Widescreen hack 16:9

--aa3f023c abaa4334 6000a427
--eeObj.WriteMem32(0x00405730,short,3FE3
--eeObj.WriteMem32(0x00405734,short,8E39

--00000000 00000000 00000000 c0ffbd27 1000bfff 0000b07f
--aa3f023c abaa4234 28868070
--eeObj.WriteMem32(0x0040e698,short,3FE3
--eeObj.WriteMem32(0x0040e69c,short,8E39


--abaaaa3f 00000000 00464400
eeObj.WriteMem32(0x00468520,0x3FE38E39)

--0e3c023c 36fa4234
--eeObj.WriteMem32(0x0040e7a0,short,3C2C
--eeObj.WriteMem32(0x0040e7a4,short,52D4

--------------------------------------------------------

--X-Fov (Need render fix and HUD fix)
eeObj.WriteMem32(0x0037da08,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46021883)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x00000000)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461e1082)
eeObj.WriteMem32(0x000c0014,0x080df683)

--Zoom
--803f033c c6290046 00008344 
--eeObj.WriteMem32(0x00168260,0x3c033fab)

--eeObj.WriteMem32(0x0037d9bc,0x3c033fc0)

--eeObj.WriteMem32(0x0037d9d8,0x3c03bfab)
--eeObj.WriteMem32(0x0038fc0c,0x3c03bf00)


--Y-Fov
--abaaaa3f 00000000 108a4600
--eeObj.WriteMem32(0x00468520,0x3FE38E2A)

--Render fix (Distance)
--803f033c 0800e003
--eeObj.WriteMem32(0x0037dd18,0x3c034000)


--------------------------
--XXX
--eeObj.WriteMem32(0x0039f11c,0x3c023f40)
--eeObj.WriteMem32(0x003ae100,0x3c023f40)
--eeObj.WriteMem32(0x00219cb4,0x3c033f40)
--eeObj.WriteMem32(0x002d9ec0,0x3c033f40)
--eeObj.WriteMem32(0x002db0e0,0x3c033fab)
--eeObj.WriteMem32(0x002db69c,0x3c033f40)
--eeObj.WriteMem32(0x0037d5fc,0x3c033f40)
--eeObj.WriteMem32(0x0040e6a0,0x3c024000)

--cloud
--eeObj.WriteMem32(0x00435298,0x3fab985d)



--00404ed0

--0ddfbabe 0000803f (00427ad0 -> 4200013c d07a20c4

--eeObj.WriteMem32(0x00405730,0x3c023f00)
--eeObj.WriteMem32(0x0040e698,0x3c023f00)
end

emuObj.AddVsyncHook(widescreen)