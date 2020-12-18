apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Futurama (PAL-M5) (SLES-51507)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00101eac,0x0812aca8)
eeObj.WriteMem32(0x00101eb0,0x00000000)
eeObj.WriteMem32(0x004ab2a0,0x3c013f40)
eeObj.WriteMem32(0x004ab2a4,0x4481f000)
eeObj.WriteMem32(0x004ab2a8,0x461e0003)
eeObj.WriteMem32(0x004ab2ac,0xe60100b4)
eeObj.WriteMem32(0x004ab2b0,0xe60000b0)
eeObj.WriteMem32(0x004ab2b4,0x080407ac)
end

emuObj.AddVsyncHook(widescreen)