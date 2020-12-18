apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--3D scenes
eeObj.WriteMem32(0x003440bc,0x3c013f40)
eeObj.WriteMem32(0x003440c0,0x44810000)
eeObj.WriteMem32(0x003440c8,0x4600c602)

--battle's fix
eeObj.WriteMem32(0x00a8edd4,0x44400000)
eeObj.WriteMem32(0x00a8eddc,0xc4400000)

--2D scenes
eeObj.WriteMem32(0x001a363c,0x3c014440)
eeObj.WriteMem32(0x001a3640,0x44810800)
eeObj.WriteMem32(0x001a3644,0x46010042)
eeObj.WriteMem32(0x001a3648,0xe6810090)
eeObj.WriteMem32(0x001a364c,0x3c014480)
eeObj.WriteMem32(0x001a3650,0x44810800)
end

emuObj.AddVsyncHook(widescreen)