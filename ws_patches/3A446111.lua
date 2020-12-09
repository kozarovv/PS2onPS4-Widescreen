apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x00751384,0x3c013f40)
eeObj.WriteMem32(0x00751388,0x44810000)
eeObj.WriteMem32(0x00751390,0x4600c602)

--FMV's fix
eeObj.WriteMem32(0x00443eb8,0x00000000)
eeObj.WriteMem32(0x00775398,0x24056e40)
eeObj.WriteMem32(0x007753a4,0x24072380)
end

emuObj.AddVsyncHook(widescreen)