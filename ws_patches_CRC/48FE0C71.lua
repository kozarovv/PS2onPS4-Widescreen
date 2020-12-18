apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x001b4f74,0x3c013f19)
eeObj.WriteMem32(0x001b4f78,0x3421999a)
eeObj.WriteMem32(0x0012369c,0x3c014440)
eeObj.WriteMem32(0x0018645c,0x3c01442b)

--alternate values
--eeObj.WriteMem32(0x003670C0,0x3F34CCCD)
eeObj.WriteMem32(0x003670C4,0x3F5EEEEF)

--portraits, dressphere and cursor width on menu
eeObj.WriteMem32(0x002142cc,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)