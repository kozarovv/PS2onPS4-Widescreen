apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Arc the Lad - Seirei no Koukon (NTSC-J) (SCPS-15041)
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen Hack 16:9

--cdcc4c3f efee6e3f d80f49c0
eeObj.WriteMem32(0x00257a84,0x3f19999a)

--cdcc4c3f efee6e3f 00247449
eeObj.WriteMem32(0x00257f40,0x3f19999a)
end

emuObj.AddVsyncHook(widescreen)