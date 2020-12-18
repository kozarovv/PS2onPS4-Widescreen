apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack

-- 16:9
eeObj.WriteMem32(0x003695dc,0x3c013f40)
eeObj.WriteMem32(0x003695e0,0x44817000)
eeObj.WriteMem32(0x003695f0,0x460e7303)

eeObj.WriteMem32(0x003fdc40,0x3c013f40)
eeObj.WriteMem32(0x003fdc48,0x4481f000)
eeObj.WriteMem32(0x003fdc98,0x4602f782)
eeObj.WriteMem32(0x003fdcac,0x461e0842)

eeObj.WriteMem32(0x0035dcc4,0x3c013f2b)

eeObj.WriteMem32(0x00109e90,0x3c01c380)
eeObj.WriteMem32(0x00109ec4,0x3c014380)
end

emuObj.AddVsyncHook(widescreen)