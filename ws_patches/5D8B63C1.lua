apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--c3180d46 00180244 00000a44
eeObj.WriteMem32(0x00234290,0x080e60d4)

eeObj.WriteMem32(0x00398350,0x460d18c3)
eeObj.WriteMem32(0x00398354,0x3c013f40)
eeObj.WriteMem32(0x00398358,0x4481f000)
eeObj.WriteMem32(0x0039835c,0x461e18c2)
eeObj.WriteMem32(0x00398360,0x0808d0a5)

--Render fix
--003f033c 00088344 00000000 02000246
eeObj.WriteMem32(0x001c6168,0x3c033f2b)
end

emuObj.AddVsyncHook(widescreen)