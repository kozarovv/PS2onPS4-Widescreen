apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=River Ride Adventure featuring Salomon (J)(SLPM-62758)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
--42ad0046 2000037e
eeObj.WriteMem32(0x0011ce24,0x08030000)
eeObj.WriteMem32(0x000c0000,0x4600ad42)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461ead42)
eeObj.WriteMem32(0x000c0010,0x0804738a)

end

emuObj.AddVsyncHook(widescreen)