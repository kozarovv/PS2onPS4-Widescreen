apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x0013BFA4,0x4483E800)
eeObj.WriteMem32(0x0013BFA8,0x4600EB02)
eeObj.WriteMem32(0x0013BFAC,0xE7B40000)
eeObj.WriteMem32(0x0013BFB0,0x0C046676)
eeObj.WriteMem32(0x0013BFB4,0x46006D06)
eeObj.WriteMem32(0x0013BFB8,0x3C013F40)
eeObj.WriteMem32(0x0013BFBC,0x4481F000)
eeObj.WriteMem32(0x0013BFC0,0x461E0003)
eeObj.WriteMem32(0x0013BFD8,0x4600E846)
end

emuObj.AddVsyncHook(widescreen)