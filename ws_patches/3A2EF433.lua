apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht (NTSC-K by Arapapa)

-- 16:9
eeObj.WriteMem32(0x00207b6c,0x3c013f40)
eeObj.WriteMem32(0x00207b70,0x4481f000)
eeObj.WriteMem32(0x00207b78,0x461ec602)

eeObj.WriteMem32(0x001e8b94,0x3c0144b0)
eeObj.WriteMem32(0x002006ac,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)