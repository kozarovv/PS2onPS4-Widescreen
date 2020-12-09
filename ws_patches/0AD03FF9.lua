apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--03001246 03150046
eeObj.WriteMem32(0x001962c0,0x0808a5b0)
eeObj.WriteMem32(0x002296c0,0x46001503)
eeObj.WriteMem32(0x002296c4,0x3c013f40)
eeObj.WriteMem32(0x002296c8,0x4481f000)
eeObj.WriteMem32(0x002296cc,0x461ea503)
eeObj.WriteMem32(0x002296d0,0x080658b1)
end

emuObj.AddVsyncHook(widescreen)