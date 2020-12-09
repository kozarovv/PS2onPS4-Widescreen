apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment==Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x00751a7c,0x3c013f40)
eeObj.WriteMem32(0x00751a80,0x44810000)
eeObj.WriteMem32(0x00751a88,0x4600c602)

--FMV's fix
eeObj.WriteMem32(0x00443f38,0x00000000)
eeObj.WriteMem32(0x00775a98,0x24056e40)
eeObj.WriteMem32(0x00775aa4,0x24072380)
end

emuObj.AddVsyncHook(widescreen)