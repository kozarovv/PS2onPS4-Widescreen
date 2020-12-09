apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--000000000000000083ad004600000000
eeObj.WriteMem32(0x003b343c,0x3c013f40)
eeObj.WriteMem32(0x003b3440,0x4481f000)
eeObj.WriteMem32(0x003b3448,0x461eb582)

--Render fix
--003f013c 00a08144 98000cc6 (1st)
eeObj.WriteMem32(0x00392f60,0x3c013f2b)

end

emuObj.AddVsyncHook(widescreen)