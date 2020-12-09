apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )

--480p+widescreen
eeObj.WriteMem32(0x0018d5dc,0x00000000)
eeObj.WriteMem32(0x0018d2ec,0x00000000)

--res fix
eeObj.WriteMem32(0x0018d02c,0x240401c0)

--fmv's fix
eeObj.WriteMem32(0x00415588,0x24117100)
eeObj.WriteMem32(0x0041558c,0x24127200)
eeObj.WriteMem32(0x00415590,0x24131e00)
eeObj.WriteMem32(0x00415598,0x24141c00)
eeObj.WriteMem32(0x0041559c,0x24117100)
eeObj.WriteMem32(0x004155a4,0x24131e00)
end

emuObj.AddVsyncHook(widescreen)