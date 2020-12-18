apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0019ec30,0x3c013f40)
eeObj.WriteMem32(0x0019ec34,0x4481f000)
eeObj.WriteMem32(0x0019ec60,0x461e0842)

-- 16:10
--eeObj.WriteMem32(0x0019ec30,0x3c013f55)
--eeObj.WriteMem32(0x0019ec34,0x34215555)
--eeObj.WriteMem32(0x0019ec5c,0x4481f000)
--eeObj.WriteMem32(0x0019ec60,0x461e0842)
end

emuObj.AddVsyncHook(widescreen)