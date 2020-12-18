apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x00414174,0x3C023FAA)
eeObj.WriteMem32(0x003dfad0,0xAC83003C)
eeObj.WriteMem32(0x003dfad4,0x3C033F40)
eeObj.WriteMem32(0x003dfad8,0x03E00008)
eeObj.WriteMem32(0x003dfadC,0xAC830000)
eeObj.WriteMem32(0x003df440,0x3C023FE3)
end

emuObj.AddVsyncHook(widescreen)