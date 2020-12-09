apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Force turn on Native Widescreen (Full boot bypassing)
eeObj.WriteMem32(0x00224bf0,0x24020002)

--Full Boot 16:9 fix
eeObj.WriteMem32(0x002091d0,0x3c013fe2)
eeObj.WriteMem32(0x002091d4,0x3421fc93)

----------------------------------------
--Fast Boot 4:3 fix
--aa3f013c 713d2134 (Last)
eeObj.WriteMem32(0x002091bc,0x3c013fe2)
eeObj.WriteMem32(0x002091c0,0x3421fc93)
end

emuObj.AddVsyncHook(widescreen)