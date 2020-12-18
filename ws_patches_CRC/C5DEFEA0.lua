apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Okami (J) (SLPM_66375)
--comment=Widescreen hack by ElHecht (pnach by Arapapa)
--Nemesis2000's search values did not apply to NTSC-J

-- 16:9

-- 2044013c 00688144 005b41c4
eeObj.WriteMem32(0x0015c364,0x3c014455)

-- 2044013c 00088144 00000000 00000000
eeObj.WriteMem32(0x0033b8d0,0x3c014455)

--both fov+ (Zoom out)
--eeObj.WriteMem32(0x0015c33c,0x3c014388)
end

emuObj.AddVsyncHook(widescreen)