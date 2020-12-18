apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
--ELF file is called "MAIN_P.RUN" 
eeObj.WriteMem32(0x0050eae0,0x3c013f40)
eeObj.WriteMem32(0x0050eae8,0x4481f000)
eeObj.WriteMem32(0x0050eaec,0x0c04821c)
eeObj.WriteMem32(0x0050eaf0,0x00000000)
eeObj.WriteMem32(0x0050eaf4,0x461e0003)
eeObj.WriteMem32(0x0050eb04,0x461e0082)
end

emuObj.AddVsyncHook(widescreen)