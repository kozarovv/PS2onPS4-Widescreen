apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Snowboard Racer 2 (E)(SLES-51712)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--03001d46 2d20c002 00000000
eeObj.WriteMem32(0x00175150,0x3c013f40)
eeObj.WriteMem32(0x0017515c,0x44819000)
eeObj.WriteMem32(0x00175160,0x46120002)
eeObj.WriteMem32(0x00175164,0x461d0003)
end

emuObj.AddVsyncHook(widescreen)