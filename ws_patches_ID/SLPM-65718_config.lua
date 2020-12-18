apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sengoku Musou: Moushouden [NTSC-J] (SLPM-65718)
--comment=Widescreen Hack by ElHecht (Pnach by Little Giant)

-- 16:9
eeObj.WriteMem32(0x00141008,0x3c024328)
eeObj.WriteMem32(0x001411f8,0x3c013f40)
eeObj.WriteMem32(0x001411fc,0x4481f000)
eeObj.WriteMem32(0x00141200,0x461e6b43)
eeObj.WriteMem32(0x00141204,0x03e00008)
eeObj.WriteMem32(0x00141208,0xe46d02bc)
end

emuObj.AddVsyncHook(widescreen)