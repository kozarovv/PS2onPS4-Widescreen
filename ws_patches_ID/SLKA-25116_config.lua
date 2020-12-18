apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE SmackDown - Here Comes the Pain (K)(SLKA-25116)
--comment=Widescreen hack by ElHecht (NTSC-K by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x001040e4,0x3c013f40)
eeObj.WriteMem32(0x001040f0,0x44810000)
eeObj.WriteMem32(0x001040f4,0x4600c602)
eeObj.WriteMem32(0x00206a5c,0x3c023f08)

--00000000 00000000 43ad1346 00000000 00000000
--403f013c 00000000 43ad1346 00008144 02c60046

--803f023c 00008244 c2280346
--083f023c 00008244 c2280346
end

emuObj.AddVsyncHook(widescreen)