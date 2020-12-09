apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--3D scenes
eeObj.WriteMem32(0x0035e58c,0x3c013f40)
eeObj.WriteMem32(0x0035e590,0x44810000)
eeObj.WriteMem32(0x0035e598,0x4600c602)

--battle's fix
eeObj.WriteMem32(0x008f3eb8,0x44400000)
eeObj.WriteMem32(0x008f3ec0,0xc4400000)
eeObj.WriteMem32(0x008F312C,0x3faaaaab)

--2D scenes
eeObj.WriteMem32(0x001b03f8,0x3c014440)
eeObj.WriteMem32(0x001b03fc,0x44810000)
end

emuObj.AddVsyncHook(widescreen)