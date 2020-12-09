apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch by nemesis2000 CRC by Acem (pnach by nemesis2000)

eeObj.WriteMem32(0x00414284,0x3C023FAA)
eeObj.WriteMem32(0x003DDB10,0xAC83003C)
eeObj.WriteMem32(0x003DDB14,0x3C033F40)
eeObj.WriteMem32(0x003DDB18,0x03E00008)
eeObj.WriteMem32(0x003DDB1C,0xAC830000)
eeObj.WriteMem32(0x003DD480,0x3C023FE3)
end

emuObj.AddVsyncHook(widescreen)