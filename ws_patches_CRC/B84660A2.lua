apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sub Rebellion (PAL-E) (SLES-51160)
--comment=Widescreen Hack by Arapapa / Ported to PAL by ElHecht

-- 16:9
eeObj.WriteMem32(0x00100dd8,0x3c0143d5)
eeObj.WriteMem32(0x00100ddc,0x34215555)
eeObj.WriteMem32(0x00100df0,0x44811000)
eeObj.WriteMem32(0x00100e04,0x3c1943d5)
eeObj.WriteMem32(0x00100e08,0x37395555)
eeObj.WriteMem32(0x00100e24,0x44991800)
eeObj.WriteMem32(0x001f50d0,0x3c01c060)
end

emuObj.AddVsyncHook(widescreen)