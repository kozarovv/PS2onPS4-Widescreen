apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Bible Game (U)(SLUS-21175)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--000093e4 140080e4
eeObj.WriteMem32(0x001e615c,0x0808d504)
eeObj.WriteMem32(0x00235410,0x3c013f40)
eeObj.WriteMem32(0x00235414,0x4481f000)
eeObj.WriteMem32(0x00235418,0x461e9cc2)
eeObj.WriteMem32(0x0023541c,0xe4930000)
eeObj.WriteMem32(0x00235420,0x08079858)

--Render fix
--003f013c 00008144 3d1be24b (2nd)
eeObj.WriteMem32(0x001e620c,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)