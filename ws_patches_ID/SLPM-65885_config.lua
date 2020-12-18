apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Rumble Roses (NTSC-J) (SLPM_658.85) 
--comment=Widescreen Hack (16:9) by ElHecht Mod Pnach crc by Acem 
--comment=Font fix by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00104084,0x3c013f40)
eeObj.WriteMem32(0x00104088,0x44810000)
eeObj.WriteMem32(0x00104090,0x4600c602)

--Font Fix
--8c3f033c cdcc6334 43080046
--533f033c 33336334 43080046
eeObj.WriteMem32(0x0030f1dc,0x3c033f53)
eeObj.WriteMem32(0x0030f1e0,0x34633333)
end

emuObj.AddVsyncHook(widescreen)