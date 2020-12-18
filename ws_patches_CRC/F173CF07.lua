apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Aqua Teen Hunger Force - Zombie Ninja Pro-Am (E)(SLES-54788
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00126078,0x080fc938)

eeObj.WriteMem32(0x003f24e0,0x460c0842)
eeObj.WriteMem32(0x003f24e4,0x3c013f97)
eeObj.WriteMem32(0x003f24e8,0x34214aaa)
eeObj.WriteMem32(0x003f24ec,0x4481f000)
eeObj.WriteMem32(0x003f24f0,0x461e0842)
eeObj.WriteMem32(0x003f24f4,0x0804981f)
end

emuObj.AddVsyncHook(widescreen)