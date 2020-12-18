apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--00000000 00000000 00000000 43a81846
--403f013c 00f08144 43a81846 42081e46
eeObj.WriteMem32(0x001b632c,0x3c013f40)
eeObj.WriteMem32(0x001b6330,0x4481f000)
eeObj.WriteMem32(0x001b6334,0x4618a843)
eeObj.WriteMem32(0x001b6338,0x461e0842)

--Render fix
--003f023c 3000bfff 00008244 2000b07f
eeObj.WriteMem32(0x001afc34,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)