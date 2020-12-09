apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht (NTSC-K by Arapapa)

-- 16:9 

--(aa3f013c aaaa2134) first... find address from top (00000000)
eeObj.WriteMem32(0x00179f80,0x3c013fe3)
eeObj.WriteMem32(0x00179f84,0x34218e39)

--(aa3f013c aaaa2134) tenth... find address from top (00000000)
eeObj.WriteMem32(0x0019eb68,0x3c013fe3)
eeObj.WriteMem32(0x0019eb6c,0x34218e39)


-- 16:10
--eeObj.WriteMem32(0x00179f80,0x3c013fcc)
--eeObj.WriteMem32(0x00179f84,0x3421cccd)
--eeObj.WriteMem32(0x0019eb68,0x3c013fcc)
--eeObj.WriteMem32(0x0019eb6c,0x3421cccd)
end

emuObj.AddVsyncHook(widescreen)