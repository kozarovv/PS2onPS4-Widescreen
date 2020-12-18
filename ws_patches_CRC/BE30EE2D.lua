apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Aqua Kids (J)(SLPM-65670)
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
--700000c6 0400028e (1st)
eeObj.WriteMem32(0x00266a54,0x080bf078)
eeObj.WriteMem32(0x002fc1e0,0xc6000070)
eeObj.WriteMem32(0x002fc1e4,0x3c013f40)
eeObj.WriteMem32(0x002fc1e8,0x4481f000)
eeObj.WriteMem32(0x002fc1ec,0x461e0002)
eeObj.WriteMem32(0x002fc1f0,0x08099a96)

end

emuObj.AddVsyncHook(widescreen)