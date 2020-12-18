apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shinseiki GPX Cyber Formula - Road to the Infinity (J)(SLPS-25307)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00088144 2d200002
eeObj.WriteMem32(0x00101418,0x3c013f2b)

--Y-Fov
--03051446 0000a0e7
eeObj.WriteMem32(0x00101434,0x080c75b8)

eeObj.WriteMem32(0x0031d6e0,0x46140503)
eeObj.WriteMem32(0x0031d6e4,0x3c013f40)
eeObj.WriteMem32(0x0031d6e8,0x4481f000)
eeObj.WriteMem32(0x0031d6ec,0x461ea502)
eeObj.WriteMem32(0x0031d6f0,0x0804050e)
end

emuObj.AddVsyncHook(widescreen)