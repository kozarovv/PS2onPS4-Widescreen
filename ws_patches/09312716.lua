apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--X-Fov
--000018e6 280000ae 00000000
eeObj.WriteMem32(0x00a7bdb8,0x082a9404)

eeObj.WriteMem32(0x00aa5010,0x3c013f40)
eeObj.WriteMem32(0x00aa5014,0x4481b800)
eeObj.WriteMem32(0x00aa5018,0x4617c602)
eeObj.WriteMem32(0x00aa501c,0xe6180000)
eeObj.WriteMem32(0x00aa5020,0x0829ef6f)
end

emuObj.AddVsyncHook(widescreen)