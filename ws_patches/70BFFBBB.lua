apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00008144 b0ffbd27
eeObj.WriteMem32(0x0012ca90,0x3c013f20)

--Render fix
--003f013c 00008144 f0ffbd27
eeObj.WriteMem32(0x0012cce8,0x3c013f40)

--Vert
--803f013c 00c88144 66a20a0c
eeObj.WriteMem32(0x002604c4,0x3c013fab)
--0044013c 00608144 46a30046
eeObj.WriteMem32(0x002604d4,0x3c0143c0)

--xxx
--eeObj.WriteMem32(0x0012cbdc,0x3c013f40)
--eeObj.WriteMem32(0x0012ce0c,0x3c013f40)
--eeObj.WriteMem32(0x00104210,0x3c013fff)
--eeObj.WriteMem32(0x00292cd0,0x3c013fff)
end

emuObj.AddVsyncHook(widescreen)