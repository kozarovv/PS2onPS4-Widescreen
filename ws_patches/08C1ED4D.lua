apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x0010e31c,0x3c013f40)
eeObj.WriteMem32(0x0010e320,0x44810000)
eeObj.WriteMem32(0x0010e328,0x4600c602)

--cutscenes fix
eeObj.WriteMem32(0x0028aecc,0x34a98c00)
eeObj.WriteMem32(0x0028aeb4,0x34a67400)

--black borders fix
eeObj.WriteMem32(0x0035e628,0x00000000)
eeObj.WriteMem32(0x0035e62c,0x03e00008)
eeObj.WriteMem32(0x0035e630,0x00000000)
end

emuObj.AddVsyncHook(widescreen)