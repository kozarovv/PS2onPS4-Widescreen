apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x00145538,0x4482E000)
eeObj.WriteMem32(0x00145548,0x460CE002)
eeObj.WriteMem32(0x0014554C,0x4483E800)
eeObj.WriteMem32(0x00145558,0x4600EB02)
eeObj.WriteMem32(0x0014555C,0x00000000)
eeObj.WriteMem32(0x00145560,0x3C013F40)
eeObj.WriteMem32(0x00145564,0x4481F000)
eeObj.WriteMem32(0x00145568,0x461E0003)
eeObj.WriteMem32(0x0014556C,0xE7A00048)
eeObj.WriteMem32(0x00145574,0x4614E002)
eeObj.WriteMem32(0x00145578,0x4600E846)
end

emuObj.AddVsyncHook(widescreen)