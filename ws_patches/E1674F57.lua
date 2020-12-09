apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=One Piece - Grand Battle (PAL-E) (SLES-53579)
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00429590,0x3f366666)

-- 16:10
--eeObj.WriteMem32(0x00429590,0x3f4aaaab)
end

emuObj.AddVsyncHook(widescreen)