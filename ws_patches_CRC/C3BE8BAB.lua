apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kao the Kangaroo Round 2 (E)(SLES-51998)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--c3180d46 00180244 00000a44
eeObj.WriteMem32(0x00233b90,0x080e5934)

eeObj.WriteMem32(0x003964d0,0x460d18c3)
eeObj.WriteMem32(0x003964d4,0x3c013f40)
eeObj.WriteMem32(0x003964d8,0x4481f000)
eeObj.WriteMem32(0x003964dc,0x461e18c2)
eeObj.WriteMem32(0x003964e0,0x0808cee5)

--Render fix
--003f033c 00088344 00000000 02000246
eeObj.WriteMem32(0x001c59f8,0x3c033f2b)
end

emuObj.AddVsyncHook(widescreen)