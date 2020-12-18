apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x003972e0,0x3c043f40)
eeObj.WriteMem32(0x003972e4,0x44841800)
eeObj.WriteMem32(0x003972e8,0x46030003)
eeObj.WriteMem32(0x003972ec,0x460318c3)
eeObj.WriteMem32(0x003972f0,0x46031840)
eeObj.WriteMem32(0x00397364,0xe603007c)

--HUD fix
eeObj.WriteMem32(0x0039719c,0x00000000)
eeObj.WriteMem32(0x003971a4,0x3C033f40)

--FMV's fix
eeObj.WriteMem32(0x00418f3c,0x241016d0)
eeObj.WriteMem32(0x00418f44,0x24127490)
end

emuObj.AddVsyncHook(widescreen)