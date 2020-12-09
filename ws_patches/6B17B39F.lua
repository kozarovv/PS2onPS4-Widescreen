apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )

--gameplay
eeObj.WriteMem32(0x00544dd4,0x3C023f40)
eeObj.WriteMem32(0x00544df0,0x4600b046)
eeObj.WriteMem32(0x00544df8,0x4600a306)
eeObj.WriteMem32(0x00544dfc,0x4600ab46)

--rfix
eeObj.WriteMem32(0x0052faec,0x3c014455)
eeObj.WriteMem32(0x0052fb28,0x44810000)

--menu fix
eeObj.WriteMem32(0x004ee128,0x0c140ddf)
eeObj.WriteMem32(0x0050377c,0x3c014456)
eeObj.WriteMem32(0x005037c4,0x44813000)
eeObj.WriteMem32(0x005037c8,0x2407ff95)

--HUD fix
eeObj.WriteMem32(0x0019e55c,0x3c03bddd)
eeObj.WriteMem32(0x0019e564,0x3464dddd)
end

emuObj.AddVsyncHook(widescreen)