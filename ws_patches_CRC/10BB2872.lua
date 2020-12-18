apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Render Fix
--003f013c 00008144 50ffbd27
eeObj.WriteMem32(0x001c8268,0x3c013f40)



--X-Fov Menu (Select Ship)
eeObj.WriteMem32(0x002e8a4c,0x3FF6CF35)

--X-Fov Game Play
eeObj.WriteMem32(0x002e8b74,0x3FF6CF35)

--X-Fov Cut-Scene
eeObj.WriteMem32(0x002e8b9c,0x3FF6CF35)



--???????
eeObj.WriteMem32(0x002e8b44,0x3ff6cf35)
eeObj.WriteMem32(0x002e8b48,0x3ff6cf35)
eeObj.WriteMem32(0x002e8b98,0x3ff6cf35)
eeObj.WriteMem32(0x002e8bc0,0x3ff6cf35)


--------------------------------------------/
--X-Fov But ????
--eeObj.WriteMem32(0x00207ab4,0x3c013f40)

--Zoom
--eeObj.WriteMem32(0x002086e4,0x3c013f20)
--eeObj.WriteMem32(0x002086d8,0x3c0143f4)
--eeObj.WriteMem32(0x00208544,0x3c01bff0)
--eeObj.WriteMem32(0x002277bc,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)