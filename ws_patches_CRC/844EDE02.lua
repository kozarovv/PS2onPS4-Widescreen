apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--42080246 07080046 3c0000e6 (1st)
eeObj.WriteMem32(0x002f5684,0x0810bfa4)
eeObj.WriteMem32(0x0042fe90,0x46020842)
eeObj.WriteMem32(0x0042fe94,0x3c013f40)
eeObj.WriteMem32(0x0042fe98,0x4481f000)
eeObj.WriteMem32(0x0042fe9c,0x461e0843)
eeObj.WriteMem32(0x0042fea0,0x080bd5a2)

end

emuObj.AddVsyncHook(widescreen)