apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Castlevania: Curse of Darkness (SLES-53755)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x007526fc,0x3c013f40)
eeObj.WriteMem32(0x00752700,0x44810000)
eeObj.WriteMem32(0x00752708,0x4600c602)

--FMV's fix
eeObj.WriteMem32(0x004448d0,0x00000000)
eeObj.WriteMem32(0x00776718,0x24056d80)
eeObj.WriteMem32(0x00776724,0x24072380)
end

emuObj.AddVsyncHook(widescreen)