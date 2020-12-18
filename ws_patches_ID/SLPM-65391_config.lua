apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shinki Genso - Spectral Souls (J)(SLPM-65391)
--comment= Widescreen Hack (16:9) by Arapapa

-- 16:9

--X-Fov
eeObj.WriteMem32(0x00128cb4,0x3c033f19)
eeObj.WriteMem32(0x00128cb8,0x3463999a)

--Render fix
eeObj.WriteMem32(0x00128cd4,0x3c0343f7)

--Font X-Size
--eeObj.WriteMem32(0x0012bd4c,0x3c024130)
--eeObj.WriteMem32(0x0012bd94,0x3c024130)
end

emuObj.AddVsyncHook(widescreen)