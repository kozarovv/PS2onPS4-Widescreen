apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Force turn on Native Widescreen (Full boot bypassing)
eeObj.WriteMem32(0x00220bd0,0x24020002)

--Full Boot 16:9 fix
eeObj.WriteMem32(0x00205230,0x3c013fe2)
eeObj.WriteMem32(0x00205234,0x3421fc93)

----------------------------/
--Fast Boot 4:3 fix
--aa3f013c 713d2134 (Last)
--eeObj.WriteMem32(0x0020521c,0x3c013fe2)
--eeObj.WriteMem32(0x00205220,0x3421fc93)
end

emuObj.AddVsyncHook(widescreen)