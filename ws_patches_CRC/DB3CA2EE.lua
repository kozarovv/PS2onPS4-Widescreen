apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disgaea 2: Cursed Memories [PAL-E] (SLES-54454)
--comment=Widescreen hack by nemesis2000
-- Ported to PAL, added 16:10 support (ElHecht)

-- 16:9
eeObj.WriteMem32(0x00104a5c,0x3c013f40)
eeObj.WriteMem32(0x00104a68,0x4481f000)
eeObj.WriteMem32(0x00104a6c,0x461ec602)
eeObj.WriteMem32(0x0027aca4,0xe49e0000)
eeObj.WriteMem32(0x0027dd20,0x461e0f43)
eeObj.WriteMem32(0x0027dd34,0xe7bd0020)

--Text width fix (Added by El_Patas)
eeObj.WriteMem32(0x0012E444,0x3C023F40)

-- 16:10
--eeObj.WriteMem32(0x00104a5c,0x3c013f55)
--eeObj.WriteMem32(0x00104a60,0x34215555)
--eeObj.WriteMem32(0x00104a68,0x4481f000)
--eeObj.WriteMem32(0x00104a6c,0x461ec602)
--eeObj.WriteMem32(0x0027aca4,0xe49e0000)
--eeObj.WriteMem32(0x0027dd20,0x461e0f43)
--eeObj.WriteMem32(0x0027dd34,0xe7bd0020)
end

emuObj.AddVsyncHook(widescreen)