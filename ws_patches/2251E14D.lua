apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )

--ee patch
eeObj.WriteMem32(0x00292424,0x24020001)
eeObj.WriteMem32(0x00292628,0x00000000)

--gameplay
eeObj.WriteMem32(0x002177e0,0x3c013f40)

--partial hud fix
eeObj.WriteMem32(0x001F7028,0x3C013F40)

--rfix 1
eeObj.WriteMem32(0x0018D408,0x3c0143d5)

--rfix 2
eeObj.WriteMem32(0x002015d4,0x3c013f40)
eeObj.WriteMem32(0x002015d8,0x44810000)
eeObj.WriteMem32(0x002015e4,0x46006303)
end

emuObj.AddVsyncHook(widescreen)