apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht (NTSC-U by Arapapa)

-- 16:9
--003f033c 00008344 00088744
eeObj.WriteMem32(0x0030aec8,0x3c033f1f)

--71601400 014c1400 054c1400 (Pal 71611400)
eeObj.WriteMem32(0x007D5F68,0x0014877D)

--menu fix
--eeObj.WriteMem32(0x00C15770,0x43A90000)
--eeObj.WriteMem32(0x00C179B0,0x43420000)
end

emuObj.AddVsyncHook(widescreen)