apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Grand Theft Auto - Vice City Stories (SLES_546.22)
--comment=NTSC Widescreen Hack by Nemesis2000 (converted to Pal by Some Chump)
--comment=Select widescreen in game otherwise image is zoomed out 4:3

widescreen fix pal
eeObj.WriteMem32(0x00265568,0x3c013f9d)
eeObj.WriteMem32(0x0026556c,0x44810000)
eeObj.WriteMem32(0x00265570,0x46006302)
eeObj.WriteMem32(0x00265574,0x3c020048)
eeObj.WriteMem32(0x00265578,0x03e00008)
eeObj.WriteMem32(0x0026557c,0xe44c7784)

eeObj.WriteMem32(0x0037afb4,0x0c09955a)
eeObj.WriteMem32(0x003ba014,0x0c09955d)
eeObj.WriteMem32(0x003ba4b0,0x0c09955d)
end

emuObj.AddVsyncHook(widescreen)