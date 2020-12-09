apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bratz - Rock Angelz (E)(SLES-53574)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--000000000000000083ad004600000000
eeObj.WriteMem32(0x002faf64,0x3c013f40)
eeObj.WriteMem32(0x002faf68,0x4481f000)
eeObj.WriteMem32(0x002faf70,0x461eb582)

--Render fix
--003f013c 00a88144 2db80002
eeObj.WriteMem32(0x0035bfd4,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)