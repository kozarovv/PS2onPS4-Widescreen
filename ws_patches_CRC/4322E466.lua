apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001bcc9c,0x3c013f40)
eeObj.WriteMem32(0x001bcca0,0x44810000)
eeObj.WriteMem32(0x001bcca8,0x4600c602)

--Render fix
eeObj.WriteMem32(0x00187450,0x3c0140a7)


end

emuObj.AddVsyncHook(widescreen)