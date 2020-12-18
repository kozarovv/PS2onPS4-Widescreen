apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Spy Fiction (NTSC-K)(SLKA-25007)
--comment=Widescreen Hack (NTSC-K by Arapapa)

--Widescreen hack 16:9
--398e633f 0000803f 00000045 00000045
eeObj.WriteMem32(0x001cab5c,0x3F2AAAAA)
end

emuObj.AddVsyncHook(widescreen)