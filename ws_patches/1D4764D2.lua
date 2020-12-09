apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x004d3f18,0x08144d75)
eeObj.WriteMem32(0x005135d4,0x3c013f40)
eeObj.WriteMem32(0x005135d8,0x4481f000)
eeObj.WriteMem32(0x005135dc,0xc6010068)
eeObj.WriteMem32(0x005135e0,0xc602006c)
eeObj.WriteMem32(0x005135e4,0x461e0843)
eeObj.WriteMem32(0x005135e8,0xe6010068)
eeObj.WriteMem32(0x005135ec,0x08134fc8)
end

emuObj.AddVsyncHook(widescreen)