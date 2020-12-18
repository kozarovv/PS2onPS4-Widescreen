apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--3D scenes
eeObj.WriteMem32(0x005e1fb4,0x3c013f40)
eeObj.WriteMem32(0x005e1fb8,0x44810000)
eeObj.WriteMem32(0x005e1fc0,0x4600c602)

--battle's fix
eeObj.WriteMem32(0x00c3745c,0x44400000)
eeObj.WriteMem32(0x00c37464,0xc4400000)
end

emuObj.AddVsyncHook(widescreen)