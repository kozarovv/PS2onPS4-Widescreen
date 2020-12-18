apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tomb Raider - The Angel of Darkness (K)(SLKA-25073)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Force turn on Native Widescreen (Full boot bypassing)
eeObj.WriteMem32(0x00224b30,0x24020002)

--Full Boot 16:9 fix
eeObj.WriteMem32(0x00209114,0x3c013fe2)
eeObj.WriteMem32(0x00209118,0x3421fc93)

----------------------------------------------
--X-Fov
--Fast Boot 4:3 fix
--aa3f013c 713d2134 (Last)
--eeObj.WriteMem32(0x00209100,0x3c013fe2)
--eeObj.WriteMem32(0x00209104,0x3421fc93)
end

emuObj.AddVsyncHook(widescreen)