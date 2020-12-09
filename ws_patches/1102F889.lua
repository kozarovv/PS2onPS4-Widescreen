apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht (NTSC-K by Arapapa)

-- 16:9
eeObj.WriteMem32(0x0023fe6c,0x3c013f40)
eeObj.WriteMem32(0x0023fe78,0x44810000)
eeObj.WriteMem32(0x0023fe7c,0x4600c602)
eeObj.WriteMem32(0x001211d0,0x3c033f19)
eeObj.WriteMem32(0x001211d8,0x3462999a)
eeObj.WriteMem32(0x001587c0,0x3c0243d6)
end

emuObj.AddVsyncHook(widescreen)