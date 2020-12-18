apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gameplay by synce
eeObj.WriteMem32(0x002491fc,0x3fe38e38)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x0034C5E8,0x24060015)

eeObj.WriteMem32(0x0034C784,0x01262818)
eeObj.WriteMem32(0x0034C788,0x24061c00)
eeObj.WriteMem32(0x0034C78c,0x00c55822)

eeObj.WriteMem32(0x0034C7B8,0x000b5843)
eeObj.WriteMem32(0x0034C7Bc,0x14620003)
eeObj.WriteMem32(0x0034C7c0,0x00ab2820)

eeObj.WriteMem32(0x001bb2b4,0x00000000)
end

emuObj.AddVsyncHook(widescreen)