apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gameplay by Hyakki
eeObj.WriteMem32(0x003A9448,0x3fe38e38)

--item fix by nemesis2000
eeObj.WriteMem32(0x00392050,0x3c013fab)
eeObj.WriteMem32(0x00392054,0x44817800)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x00395f2c,0x24060015)

eeObj.WriteMem32(0x003960d0,0x01262818)
eeObj.WriteMem32(0x003960d4,0x24061c00)
eeObj.WriteMem32(0x003960d8,0x00c55822)
eeObj.WriteMem32(0x00396104,0x000b5843)
eeObj.WriteMem32(0x00396108,0x14620003)
eeObj.WriteMem32(0x0039610c,0x00ab2820)

eeObj.WriteMem32(0x001473a4,0x00000000)
end

emuObj.AddVsyncHook(widescreen)