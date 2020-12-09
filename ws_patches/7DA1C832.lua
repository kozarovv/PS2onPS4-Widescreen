apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by VIRGIN KLM (NTSC-J by Arapapa)

--Widescreen hack 16:9

--0000803f d7a3703f
eeObj.WriteMem32(0x00488064,0x3f400000)

--0000803f d7a3703f
eeObj.WriteMem32(0x0081DE64,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)