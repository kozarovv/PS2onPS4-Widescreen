apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Rhapsodia [NTSC-J] (SLPM-66105)
--comment=Original Widescreen Hack by nemesis2000 (pnach by nemesis2000 )

eeObj.WriteMem32(0x0037e62c,0x3c013f40)
eeObj.WriteMem32(0x0037e630,0x44810000)
eeObj.WriteMem32(0x0037e638,0x4600c602)

--FMV's fix
eeObj.WriteMem32(0x003bb24c,0x24101E00)
eeObj.WriteMem32(0x003bb400,0x24110190)
end

emuObj.AddVsyncHook(widescreen)