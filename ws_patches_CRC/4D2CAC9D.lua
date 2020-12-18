apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x0014d6ac,0x3c033f40)
eeObj.WriteMem32(0x0014d6b4,0xe7a000dc)
eeObj.WriteMem32(0x0014d6b8,0x46000003)
eeObj.WriteMem32(0x0014d6bc,0xe7a000d8)
eeObj.WriteMem32(0x001051d4,0x3c013f40)
eeObj.WriteMem32(0x001051d8,0x44810000)
eeObj.WriteMem32(0x001051e0,0x4600c602)


--480i
eeObj.WriteMem32(0x0013B818,0x24050001)


--font fix
eeObj.WriteMem32(0x001878f8,0x24080012)
eeObj.WriteMem32(0x001892e0,0x24080017)
eeObj.WriteMem32(0x001946C4,0x24080017)
eeObj.WriteMem32(0x001d3594,0x24080017)
eeObj.WriteMem32(0x001d382c,0x24080017)

eeObj.WriteMem32(0x0013e258,0x24090017)
eeObj.WriteMem32(0x0013e264,0x24C60007)

--portrait fix
eeObj.WriteMem32(0x001944a4,0x2648001e)
eeObj.WriteMem32(0x001944cc,0x2409003c)

eeObj.WriteMem32(0x0018C914,0x2646000E)
eeObj.WriteMem32(0x0018c930,0x2409003c)

eeObj.WriteMem32(0x00188304,0x2546000a)
eeObj.WriteMem32(0x0018830c,0x2409003c)

eeObj.WriteMem32(0x0018d1b8,0x24c60008)
eeObj.WriteMem32(0x0018d1a8,0x24090018)

eeObj.WriteMem32(0x00192938,0x240a00c0)
eeObj.WriteMem32(0x0019351c,0x24c60020)

eeObj.WriteMem32(0x00194608,0x240900c0)
eeObj.WriteMem32(0x00194618,0x24c60020)
end

emuObj.AddVsyncHook(widescreen)