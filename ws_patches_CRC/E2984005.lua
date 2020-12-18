apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Suikoden IV (SLUS-20979)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x0048845c,0x3c013f40)
eeObj.WriteMem32(0x00488460,0x44810000)
eeObj.WriteMem32(0x00488468,0x4600c602)
eeObj.WriteMem32(0x004b6b44,0x3c0143f0)

--FMV's fix
eeObj.WriteMem32(0x004C4BE4,0x24101E00)
eeObj.WriteMem32(0x004C4D98,0x24110190)

--Font width
eeObj.WriteMem32(0x007310EC,0x3F400000)
eeObj.WriteMem32(0x007321BC,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)