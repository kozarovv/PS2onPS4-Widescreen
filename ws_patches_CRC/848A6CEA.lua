apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )

--480p+widescreen
eeObj.WriteMem32(0x00270964,0x00000000)
eeObj.WriteMem32(0x00270548,0x00000000)

--res fix
eeObj.WriteMem32(0x0027019c,0x240401c0)

--fmv's fix
eeObj.WriteMem32(0x005c7978,0x24117100)
eeObj.WriteMem32(0x005c797c,0x24127200)
eeObj.WriteMem32(0x005c7980,0x24131e00)
eeObj.WriteMem32(0x005c7988,0x24141c00)
eeObj.WriteMem32(0x005c798c,0x24117100)
eeObj.WriteMem32(0x005c7994,0x24131e00)
end

emuObj.AddVsyncHook(widescreen)