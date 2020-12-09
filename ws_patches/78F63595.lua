apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by Aced14

--16:9 Widescreen
eeObj.WriteMem32(0x004AFBDC,0x081378DC)
eeObj.WriteMem32(0x004DE370,0x3C013F40)
eeObj.WriteMem32(0x004DE374,0x4481F800)
eeObj.WriteMem32(0x004DE378,0x461F07C2)
eeObj.WriteMem32(0x004DE37C,0x0812BEF9)
eeObj.WriteMem32(0x004DE380,0xE61F0120)

--eeObj.WriteMem32(0x005110BC,0x00000355)
end

emuObj.AddVsyncHook(widescreen)