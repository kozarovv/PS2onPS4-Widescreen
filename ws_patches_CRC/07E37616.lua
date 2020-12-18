apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--07000046 140040e4 0400a4e7
eeObj.WriteMem32(0x002396b0,0x08065634)

eeObj.WriteMem32(0x001958d0,0x46000007)
eeObj.WriteMem32(0x001958d4,0x3c013f40)
eeObj.WriteMem32(0x001958d8,0x4481f000)
eeObj.WriteMem32(0x001958dc,0x461e6b42)
eeObj.WriteMem32(0x001958e0,0x0808e5ad)

--Render fix
--003f013c 00008144 5100023c (1st)
eeObj.WriteMem32(0x001e9490,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)