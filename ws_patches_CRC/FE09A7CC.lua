apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=DragonBall Z - Budokai 2 (PAL-M5) (SLES-51839)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0013192c,0x3c013f40)
eeObj.WriteMem32(0x00131930,0x4481f000)
eeObj.WriteMem32(0x001317fc,0x461ead42)
end

emuObj.AddVsyncHook(widescreen)