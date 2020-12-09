apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ragingbless (NTSC-K)(SLPM-64521)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00608144 c6730046
eeObj.WriteMem32(0x00228754,0x3c013f40)

--Render fix
--0000a043 414c6e43
eeObj.WriteMem32(0x002d2f70,0x43e00000)
end

emuObj.AddVsyncHook(widescreen)