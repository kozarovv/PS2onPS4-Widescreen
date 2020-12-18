apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )

--ee patch
eeObj.WriteMem32(0x002917E4,0x24020001)
eeObj.WriteMem32(0x002919E4,0x00000000)

--gameplay
eeObj.WriteMem32(0x00216EA0,0x3c013f40)

--partial hud fix
eeObj.WriteMem32(0x001F6BF8,0x3C013F40)

--rfix 1
eeObj.WriteMem32(0x0018D408,0x3c0143d5)

--rfix 2
eeObj.WriteMem32(0x00200d84,0x3c013f40)
eeObj.WriteMem32(0x00200d88,0x44810000)
eeObj.WriteMem32(0x00200d94,0x46006303)
end

emuObj.AddVsyncHook(widescreen)