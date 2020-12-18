apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Unison - Rebels of Rhythm & Dance (U)(SLUS-20173)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Matrix Hack
eeObj.WriteMem32(0x001e4654,0x3c013f40)
eeObj.WriteMem32(0x001e4658,0x44810000)
eeObj.WriteMem32(0x001e4660,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)