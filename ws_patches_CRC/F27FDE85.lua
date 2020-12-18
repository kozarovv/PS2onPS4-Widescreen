apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Secret Weapons Over Normandy (J)(SLPM-65483)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--42420146 02490446
eeObj.WriteMem32(0x001b8a98,0x0812db48)

eeObj.WriteMem32(0x004b6d20,0x46014242)
eeObj.WriteMem32(0x004b6d24,0x3c013f40)
eeObj.WriteMem32(0x004b6d28,0x4481f000)
eeObj.WriteMem32(0x004b6d2c,0x461e4a42)
eeObj.WriteMem32(0x004b6d30,0x0806e2a7)

--Render fix
--68008bc4 0800a327
eeObj.WriteMem32(0x001b8150,0x0812db50)

eeObj.WriteMem32(0x004b6d40,0xc48b0068)
eeObj.WriteMem32(0x004b6d44,0x3c013faa)
eeObj.WriteMem32(0x004b6d48,0x3421aaab)
eeObj.WriteMem32(0x004b6d4c,0x4481f000)
eeObj.WriteMem32(0x004b6d50,0x461e5ac2)
eeObj.WriteMem32(0x004b6d54,0x0806e055)
end

emuObj.AddVsyncHook(widescreen)