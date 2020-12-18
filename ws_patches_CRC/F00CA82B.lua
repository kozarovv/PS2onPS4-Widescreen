apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Project - Snowblind (PAL-M4) (SLES-53124)
--comment=Widescreen hack by ElHecht

-- 16:9 intro (SLES_531.24)
eeObj.WriteMem32(0x00023faa,0x001d98a0)
eeObj.WriteMem32(0x001d98a0,0x3c013fe3)
eeObj.WriteMem32(0x001d98a4,0x34218e39)

-- 16:9 single-player (BO3GM.ELF)
eeObj.WriteMem32(0x00023faa,0x00332bb8)
eeObj.WriteMem32(0x00332bb8,0x3c013fe3)
eeObj.WriteMem32(0x00332bbc,0x34218e39)

-- 16:9 lan/internet multi-player (BO3NETGM.ELF)
eeObj.WriteMem32(0x00023faa,0x00418700)
eeObj.WriteMem32(0x00418700,0x3c013fe3)
eeObj.WriteMem32(0x00418704,0x34218e39)
end

emuObj.AddVsyncHook(widescreen)