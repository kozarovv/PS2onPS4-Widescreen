apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Barnyard (U)(SLUS-21277)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x00540d60,0x3F9F4877)

--Zoom (Select Menu and Game Play)
--eeObj.WriteMem32(0x0053e804,0x3fa80000)
eeObj.WriteMem32(0x0053d748,0x3fd50000)

--Black Bar Fix (Event Scene Top and Bottom)  -- TLB miss
--eeObj.WriteMem32(0x01A1DF04,0x00000000)
--eeObj.WriteMem32(0x01A1DF7C,0x00000000)
end

emuObj.AddVsyncHook(widescreen)