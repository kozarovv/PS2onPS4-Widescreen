apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)
--gameplay
eeObj.WriteMem32(0x002174e8,0x3c013f40)

--partial hud fix
eeObj.WriteMem32(0x001f6f20,0x3C013F40)

--rfix 1
eeObj.WriteMem32(0x0018d408,0x3c0143d5)

--rfix 2
eeObj.WriteMem32(0x00200d84,0x3c013f40)
eeObj.WriteMem32(0x00200d88,0x44810000)
eeObj.WriteMem32(0x00200d94,0x46006303)
end

emuObj.AddVsyncHook(widescreen)