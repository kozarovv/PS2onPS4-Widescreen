apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001b6de8,0x3c013f40)
eeObj.WriteMem32(0x001b6df0,0x4481f000)
eeObj.WriteMem32(0x001b6e58,0x461ebb03)
eeObj.WriteMem32(0x001b6e5c,0x46006347)
end

emuObj.AddVsyncHook(widescreen)