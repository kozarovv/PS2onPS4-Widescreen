apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bouken Jidai Katsugeki - Goemon [NTSC-J] (SLPM-65014)
--comment=Widescreen hack by Little Giant and Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x002EECAC,0x3C013f9a)
eeObj.WriteMem32(0x002EECb0,0x3421e462)

--Y-Fov
eeObj.WriteMem32(0x00338830,0x3c013f20)
eeObj.WriteMem32(0x00338834,0x3421603a)

--Menu and HUD fix
eeObj.WriteMem32(0x003389d0,0x080e4a58)

eeObj.WriteMem32(0x00392960,0xc6000230)
eeObj.WriteMem32(0x00392964,0x3c013f40)
eeObj.WriteMem32(0x00392968,0x4481f000)
eeObj.WriteMem32(0x0039296c,0x461e0002)
eeObj.WriteMem32(0x00392970,0x080ce275)

----------------------------------------------------------------

--X-Fov
--eeObj.WriteMem32(0x003387a4,0x3c013f40)

--Render fix
--eeObj.WriteMem32(0x0026d480,0x3c0143e0)
--eeObj.WriteMem32(0x0031399c,0x3c0143e0)
--eeObj.WriteMem32(0x00321d4c,0x3c0143e0)
--eeObj.WriteMem32(0x00321de4,0x3c0143e0)
--eeObj.WriteMem32(0x00338808,0x3c0143e0)

--eeObj.WriteMem32(0x01FBB0C0,0x3F206D3A)
end

emuObj.AddVsyncHook(widescreen)