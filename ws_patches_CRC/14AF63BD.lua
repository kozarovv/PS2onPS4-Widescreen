apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x004a37f8,0x0811b730)
eeObj.WriteMem32(0x0046dcc0,0x3c013f40)
eeObj.WriteMem32(0x0046dcc4,0x4481f000)
eeObj.WriteMem32(0x0046dcc8,0xc6010068)
eeObj.WriteMem32(0x0046dccc,0xc602006c)
eeObj.WriteMem32(0x0046dcd0,0x461e0843)
eeObj.WriteMem32(0x0046dcd4,0xe6010068)
eeObj.WriteMem32(0x0046dcd8,0x08128e00)
end

emuObj.AddVsyncHook(widescreen)