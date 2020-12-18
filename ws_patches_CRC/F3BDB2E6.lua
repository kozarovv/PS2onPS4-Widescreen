apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shadow Hearts Covenant SLUS_210.41
--comment=Widescreen Hack

--black borders fix (optional)
(c843033c 803f023c to c843033c 0000023c)
eeObj.WriteMem32(0x00402f24,0x3c020000)

-- 16:9
eeObj.WriteMem32(0x00202c94,0x3c013f40)
eeObj.WriteMem32(0x00202c98,0x44810000)
eeObj.WriteMem32(0x00202ca0,0x4600c602)

-- Render-Fix
eeObj.WriteMem32(0x0022531c,0x3c033fc0)
end

emuObj.AddVsyncHook(widescreen)