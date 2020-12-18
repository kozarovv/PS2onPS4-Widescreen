apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=X-treme Quads (E)(SLES-53141)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00198db0,0x0808c5f8)
eeObj.WriteMem32(0x002317e0,0x46150502)
eeObj.WriteMem32(0x002317e4,0x3c013f40)
eeObj.WriteMem32(0x002317e8,0x4481f000)
eeObj.WriteMem32(0x002317ec,0x461ea503)
eeObj.WriteMem32(0x002317f0,0x0806636d)
end

emuObj.AddVsyncHook(widescreen)