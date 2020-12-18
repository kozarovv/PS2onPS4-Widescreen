apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=I.Q. Remix+ - Intelligent Qube (K)(SLKA-25060)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--03320246 43020146
eeObj.WriteMem32(0x003be348,0x080f9054)

eeObj.WriteMem32(0x003e4150,0x46023203)
eeObj.WriteMem32(0x003e4154,0x3c013f40)
eeObj.WriteMem32(0x003e4158,0x4481f000)
eeObj.WriteMem32(0x003e415c,0x461e4202)
eeObj.WriteMem32(0x003e4160,0x080ef8d3)
end

emuObj.AddVsyncHook(widescreen)