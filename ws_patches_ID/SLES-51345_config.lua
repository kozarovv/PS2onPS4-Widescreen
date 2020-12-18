apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Run Like Hell (PAL-M5) (SLES-51345)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00110ba0,0x3c013f40)
eeObj.WriteMem32(0x00110ba8,0x4481f000)
eeObj.WriteMem32(0x001a17c0,0x461e0583)

-- HUD-Fix
eeObj.WriteMem32(0x00170430,0x461ef383)
eeObj.WriteMem32(0x00170434,0x460e7783)
end

emuObj.AddVsyncHook(widescreen)