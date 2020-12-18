apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Syphon Filter: The Omega Strain (SCUS-97264)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x003754e0,0x3c043f40)
eeObj.WriteMem32(0x003754e4,0x44841800)
eeObj.WriteMem32(0x003754e8,0x46030003)
eeObj.WriteMem32(0x003754ec,0x460318c3)
eeObj.WriteMem32(0x003754f0,0x46031840)
eeObj.WriteMem32(0x00375564,0xe603007c)

--HUD fix
eeObj.WriteMem32(0x0037539c,0x00000000)
eeObj.WriteMem32(0x003753a4,0x3C033f40)

--FMV's fix
eeObj.WriteMem32(0x003F752c,0x24101400)
eeObj.WriteMem32(0x003F7534,0x24127600)
end

emuObj.AddVsyncHook(widescreen)