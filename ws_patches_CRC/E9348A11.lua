apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Medal of Honor: Frontline  (SLUS-20368)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x001455b8,0x0c052def)
eeObj.WriteMem32(0x001455d8,0x0c052def)
eeObj.WriteMem32(0x001455f8,0x0c052def)

eeObj.WriteMem32(0x0014b7bc,0x3c013f50)
eeObj.WriteMem32(0x0014b7c0,0x44810800)
eeObj.WriteMem32(0x0014b7c4,0x46016303)
eeObj.WriteMem32(0x0014b7c8,0xc481043c)
eeObj.WriteMem32(0x0014b7cc,0x460c0832)
eeObj.WriteMem32(0x0014b7d0,0x45010008)
eeObj.WriteMem32(0x0014b7d4,0x00000000)
eeObj.WriteMem32(0x0014b7d8,0x46016034)
eeObj.WriteMem32(0x0014b7dc,0x45000004)
eeObj.WriteMem32(0x0014b7e0,0xe48c0444)
eeObj.WriteMem32(0x0014b7e4,0x46006807)
eeObj.WriteMem32(0x0014b7e8,0x03e00008)
eeObj.WriteMem32(0x0014b7ec,0xe4800448)
eeObj.WriteMem32(0x0014b7f0,0xe48d0448)
eeObj.WriteMem32(0x0014b7f4,0x03e00008)
eeObj.WriteMem32(0x0014b7f8,0x3c030024)
eeObj.WriteMem32(0x0014b7fc,0x27bdff60)

eeObj.WriteMem32(0x00325c90,0x3f1c0000)
end

emuObj.AddVsyncHook(widescreen)