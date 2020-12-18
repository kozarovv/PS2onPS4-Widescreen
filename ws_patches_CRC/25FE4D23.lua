apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht (NTSC-K by Arapapa)

-- 16:9

--003f033c 00008344
eeObj.WriteMem32(0x00367ae8,0x3c033f1f)

--c1781400 01321400  (PAL c1791400)
eeObj.WriteMem32(0x00826E10,0x0014A709)

-- menu fix
eeObj.WriteMem32(0x00B63EE0,0x43A80000)
eeObj.WriteMem32(0x00B664B0,0x43440000)
end

emuObj.AddVsyncHook(widescreen)