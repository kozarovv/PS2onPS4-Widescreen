apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001398f0,0x08079ed3)
eeObj.WriteMem32(0x001398f4,0x00000000)

eeObj.WriteMem32(0x001e7b4c,0x3c013f40)
eeObj.WriteMem32(0x001e7b50,0x4481f000)
eeObj.WriteMem32(0x001e7b54,0x461e2103)
eeObj.WriteMem32(0x001e7b58,0xe4840544)
eeObj.WriteMem32(0x001e7b5c,0x46002107)
eeObj.WriteMem32(0x001e7b60,0x0804e63d)

eeObj.WriteMem32(0x00138154,0x3c034456)
end

emuObj.AddVsyncHook(widescreen)