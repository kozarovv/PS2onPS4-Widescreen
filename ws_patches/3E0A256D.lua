apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x001ab354,0x3c013ec0)
eeObj.WriteMem32(0x001ab358,0x4481f800)
eeObj.WriteMem32(0x001ab3f0,0x461f0002)

--Render fix
eeObj.WriteMem32(0x001aac78,0x10000004)
eeObj.WriteMem32(0x001c2e2c,0x3c013f40)
eeObj.WriteMem32(0x001c2e4c,0x4481f800)
eeObj.WriteMem32(0x001c2e78,0x461f0842)
eeObj.WriteMem32(0x001c2e7c,0x46011034)
end

emuObj.AddVsyncHook(widescreen)