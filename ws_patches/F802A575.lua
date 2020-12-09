apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Run Like Hell (NTSC-U)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00110838,0x3c013f40)
eeObj.WriteMem32(0x00110840,0x4481f000)
eeObj.WriteMem32(0x0019fe60,0x461e0583)

-- HUD-Fix
eeObj.WriteMem32(0x0016f328,0x3c1b3f80)
eeObj.WriteMem32(0x0016f330,0x449bf000)
end

emuObj.AddVsyncHook(widescreen)