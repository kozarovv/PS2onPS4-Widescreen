apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 06 - The Snowboard (J)(SLPM-62196)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--03001d46 2d20c002 00000000
eeObj.WriteMem32(0x001744b8,0x3c013f40)
eeObj.WriteMem32(0x001744c4,0x44819000)
eeObj.WriteMem32(0x001744c8,0x46120002)
eeObj.WriteMem32(0x001744cc,0x461d0003)
end

emuObj.AddVsyncHook(widescreen)