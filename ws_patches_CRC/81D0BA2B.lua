apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47 (NTSC-K by Arapapa)

--Widescreen hack 16:9
eeObj.WriteMem32(0x015AAA18,0x3FBAAAAA)
eeObj.WriteMem32(0x015AAB40,0x3F400000)
eeObj.WriteMem32(0x015AB0E8,0x3FBAAAAA)
eeObj.WriteMem32(0x015AB210,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)