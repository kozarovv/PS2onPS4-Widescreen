apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x001817e8,0x3c023fe3)
eeObj.WriteMem32(0x001817ec,0x34428e38)
eeObj.WriteMem32(0x001a98b4,0x3c023f40)

--FMV's fix
eeObj.WriteMem32(0x00321218,0x240202aa)
eeObj.WriteMem32(0x0032123c,0x24020200)
eeObj.WriteMem32(0x00321240,0x24020255)
eeObj.WriteMem32(0x00321260,0x240201c0)
end

emuObj.AddVsyncHook(widescreen)