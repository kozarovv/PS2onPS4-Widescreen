apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x0013CBD8,0x4482E000)
eeObj.WriteMem32(0x0013CBE8,0x460CE002)
eeObj.WriteMem32(0x0013CBEC,0x4483E800)
eeObj.WriteMem32(0x0013CBF8,0x4600EB02)
eeObj.WriteMem32(0x0013CBFC,0x00000000)
eeObj.WriteMem32(0x0013CC00,0x3C013F40)
eeObj.WriteMem32(0x0013CC04,0x4481F000)
eeObj.WriteMem32(0x0013CC08,0x461E0003)
eeObj.WriteMem32(0x0013CC0C,0xE7A00048)
eeObj.WriteMem32(0x0013CC14,0x4614E002)
eeObj.WriteMem32(0x0013CC18,0x4600E846)
end

emuObj.AddVsyncHook(widescreen)