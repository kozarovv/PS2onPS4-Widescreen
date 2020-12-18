apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00655260,0x3c013f40)
eeObj.WriteMem32(0x00655264,0x34210000)

-- 16:10
--eeObj.WriteMem32(0x00655260,0x3c013f55)
--eeObj.WriteMem32(0x00655264,0x34215555)

-- 16:9 and 16:10 modifications
-- no need to change anything here! all modifications are calculated
-- based on the hor fov value in the upper 16:9/16:10 section
eeObj.WriteMem32(0x0018f548,0x08195498)
eeObj.WriteMem32(0x0018f54c,0x00000000)
eeObj.WriteMem32(0x00655268,0x4481f000)
eeObj.WriteMem32(0x0065526c,0x461e2102)
eeObj.WriteMem32(0x00655270,0xe7a40000)
eeObj.WriteMem32(0x00655274,0xc7b40070)
eeObj.WriteMem32(0x00655278,0x08063d53)
end

emuObj.AddVsyncHook(widescreen)