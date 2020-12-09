apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Stuntman Ignition (J)(SLPM-66910)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom 
--403f023c 00688244 40cc0b0c
eeObj.WriteMem32(0x002aa3d4,0x3c023f10)
--eeObj.WriteMem32(0x004f3bb0,0x3f400000)
--eeObj.WriteMem32(0x0033f3b8,0x3c0c3f40)
--eeObj.WriteMem32(0x002f3114,0x3c023f2a)


--Y-Fov
eeObj.WriteMem32(0x005BA8C0,0x3F252945)
end

emuObj.AddVsyncHook(widescreen)