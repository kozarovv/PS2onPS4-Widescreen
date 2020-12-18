apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gregory Horror Show - Soul Collector (J)(SLPM-65324)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00165280,0x3c033f40)

--2D X-fov
eeObj.WriteMem32(0x001651f0,0x3c023f40)

--Font zoom
eeObj.WriteMem32(0x002540f0,0x3c034240)
eeObj.WriteMem32(0x0025411c,0x3c034240)

--Font Y-Fov #1
eeObj.WriteMem32(0x0025410c,0x080b36b5)

eeObj.WriteMem32(0x002cdad4,0x3c013fab)
eeObj.WriteMem32(0x002cdad8,0x4481f000)
eeObj.WriteMem32(0x002cdadc,0x461e6342)
eeObj.WriteMem32(0x002cdae0,0x08095044)

--Font Y-Fov #2
eeObj.WriteMem32(0x00254130,0x080b36b0)

eeObj.WriteMem32(0x002cdac0,0x3c013fab)
eeObj.WriteMem32(0x002cdac4,0x4481f000)
eeObj.WriteMem32(0x002cdac8,0x461e6342)
eeObj.WriteMem32(0x002cdacc,0x0809504d)

--No interlacing by asasega
eeObj.WriteMem32(0x0010210C,0x00000000)
end

emuObj.AddVsyncHook(widescreen)