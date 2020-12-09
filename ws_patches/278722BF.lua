apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by sergx12
--comment=Ported to PAL by ElHecht

-- 16:9
eeObj.WriteMem32(0x0012bd38,0x3c013f10)
eeObj.WriteMem32(0x00388464,0x44105555)
eeObj.WriteMem32(0x0025aec8,0x3c013f40)
eeObj.WriteMem32(0x003884a0,0x44105555)
eeObj.WriteMem32(0x0025c6c4,0x3c013f40)
eeObj.WriteMem32(0x003884bc,0x44105555)
eeObj.WriteMem32(0x0025c758,0x3c013f40)
eeObj.WriteMem32(0x003884c8,0x44105555)
eeObj.WriteMem32(0x0025c7b8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)