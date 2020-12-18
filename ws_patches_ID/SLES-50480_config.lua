apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Aggressive Inline (PAL-M4) (SLES-50480)
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0010114c,0x3c013f40)
eeObj.WriteMem32(0x00276cd4,0x3c093f40)

-- 16:10
--eeObj.WriteMem32(0x0010113c,0x3c013f55)
--eeObj.WriteMem32(0x0010114c,0x34215555)
--eeObj.WriteMem32(0x00276cd4,0x3c093f55)
--eeObj.WriteMem32(0x00276cd8,0x35295555)

-- 16:9 and 16:10 modifications
-- no need to change anything here! all modifications are calculated
-- based on the hor fov value in the upper 16:9/16:10 section
eeObj.WriteMem32(0x00101794,0x0809db35)
eeObj.WriteMem32(0x00101798,0x00000000)
eeObj.WriteMem32(0x00276cdc,0x4489f000)
eeObj.WriteMem32(0x00276ce0,0x461e0843)
eeObj.WriteMem32(0x00276ce4,0x46000843)
eeObj.WriteMem32(0x00276ce8,0xe62004e8)
eeObj.WriteMem32(0x00276cec,0x080405e6)
end

emuObj.AddVsyncHook(widescreen)