apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0021694c,0x081afd5a)
eeObj.WriteMem32(0x006bf568,0x3c013f40)
eeObj.WriteMem32(0x006bf56c,0x4481f000)
eeObj.WriteMem32(0x006bf570,0x461e0003)
eeObj.WriteMem32(0x006bf574,0xe7a00048)
eeObj.WriteMem32(0x006bf578,0x08085a54)
end

emuObj.AddVsyncHook(widescreen)