apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shadow Hearts - From the New World  SLUS_213.26
--comment=Widescreen Hack

--black borders fix (optional)
(c843033c 803f023c to c843033c 0000023c)
eeObj.WriteMem32(0x002f75c4,0x3c020000)

-- 16:9
eeObj.WriteMem32(0x00202d4c,0x3c013f40)
eeObj.WriteMem32(0x00202d50,0x44810000)
eeObj.WriteMem32(0x00202d58,0x4600c602)

-- Render-Fix
eeObj.WriteMem32(0x002282cc,0x3c033fc0)
end

emuObj.AddVsyncHook(widescreen)