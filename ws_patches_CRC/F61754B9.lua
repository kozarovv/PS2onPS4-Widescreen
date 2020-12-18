apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=World Series of Poker (U)(SLUS-21301)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x00321504,0x3c013f40)
eeObj.WriteMem32(0x00321508,0x44810000)
eeObj.WriteMem32(0x00321510,0x4600c602)


end

emuObj.AddVsyncHook(widescreen)