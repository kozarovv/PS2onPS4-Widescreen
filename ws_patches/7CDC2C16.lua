apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Devina and Arapapa

--Widescreen hack 16:9

/Y-fov (Memory Hack)
--0000403f 0000403f 00000000 00000000 00000041
eeObj.WriteMem32(0x00F92200,0x3f100000)

--Zoom (ELF Hack)
--0e3c013c 35fa2134
eeObj.WriteMem32(0x001639f8,0x3c013c2a)
eeObj.WriteMem32(0x001639fc,0x3421a000)

--Render fix (ELF hack)
eeObj.WriteMem32(0x0021de38,0x44800000)
end

emuObj.AddVsyncHook(widescreen)