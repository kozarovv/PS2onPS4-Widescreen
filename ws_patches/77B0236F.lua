apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--3D scenes
eeObj.WriteMem32(0x0046cc7c,0x3c013f40)
eeObj.WriteMem32(0x0046cc80,0x44810000)
eeObj.WriteMem32(0x0046cc88,0x4600c602)

--battle's fix
eeObj.WriteMem32(0x00ba73cc,0x44400000)
eeObj.WriteMem32(0x00ba73d4,0xc4400000)
eeObj.WriteMem32(0x00ba6700,0x3faaaaab)
end

emuObj.AddVsyncHook(widescreen)