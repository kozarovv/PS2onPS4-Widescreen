apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Godzilla - Save the Earth (PAL-M5) (SLES-52766)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00243dcc,0x0812ce2d)
eeObj.WriteMem32(0x00243dd0,0x00000000)
eeObj.WriteMem32(0x004b38b4,0x3c013f40)
eeObj.WriteMem32(0x004b38b8,0x4481f000)
eeObj.WriteMem32(0x004b38bc,0x461e0002)
eeObj.WriteMem32(0x004b38c0,0xe6000124)
eeObj.WriteMem32(0x004b38c4,0xe6010128)
eeObj.WriteMem32(0x004b38c8,0x08090f74)
end

emuObj.AddVsyncHook(widescreen)