apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hot Wheels - Velocity X (U)(SLUS-20412)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--42100146 803f023c 
eeObj.WriteMem32(0x0023dc5c,0x08082ed8)

eeObj.WriteMem32(0x0020bb60,0x46011042)
eeObj.WriteMem32(0x0020bb64,0x3c013f40)
eeObj.WriteMem32(0x0020bb68,0x4481f000)
eeObj.WriteMem32(0x0020bb6c,0x461e0842)
eeObj.WriteMem32(0x0020bb70,0x0808f718)

--Render fix
--003f023c 33336434
eeObj.WriteMem32(0x00248e3c,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)