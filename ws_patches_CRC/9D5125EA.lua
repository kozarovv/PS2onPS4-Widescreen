apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Transformers Tatakai (J)(SLPM-65407)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--4c3f033c cdcc6334 5000a0c4
eeObj.WriteMem32(0x0014b1b0,0x3c033f19)
eeObj.WriteMem32(0x0014b1b4,0x3463999a)

--Rendering diatance
--803f033c 00e04234
eeObj.WriteMem32(0x00148900,0x3c033fb0)

--Mini Map 
--eeObj.WriteMem32(0x00284680,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)