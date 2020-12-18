apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Vampire Night (J)(SLPS-25077)
--comment=Widescreen Hack by ElHecht(NTSC-J by Arapapa)

-- 16:9
--00000000 4900023c 20544224
eeObj.WriteMem32(0x002123f8,0x3c013f40)


-- cut-scenes black bar removal
2044033c 00088344 28868070
eeObj.WriteMem32(0x001ffcd8,0x3c030000)

-- 16:9 and 16:10 main modfication
-- no need to change anything here! all modifications are calculated
-- based on the hor fov value in the upper 16:9/16:10 section
--00000000 3c240200 (1st)
eeObj.WriteMem32(0x00212438,0x4481f000)

eeObj.WriteMem32(0x00212450,0x46001003)
eeObj.WriteMem32(0x00212454,0x461e0742)
eeObj.WriteMem32(0x00212468,0x461e0703)
eeObj.WriteMem32(0x0021246c,0x44820000)

eeObj.WriteMem32(0x002123b0,0x3c023fb6)
eeObj.WriteMem32(0x002123b8,0x3444db6e)
eeObj.WriteMem32(0x002123bc,0x44846000)
eeObj.WriteMem32(0x002123d8,0x461e6303)
eeObj.WriteMem32(0x0021252c,0x3c023fb6)
eeObj.WriteMem32(0x00212534,0x3444db6e)
eeObj.WriteMem32(0x00212538,0x44846000)
eeObj.WriteMem32(0x00212554,0x461e6303)
eeObj.WriteMem32(0x00212cac,0x461e0843)


eeObj.WriteMem32(0x00200954,0x4601e042)
eeObj.WriteMem32(0x0020d604,0x461d0803)
eeObj.WriteMem32(0x001aede8,0x3c083f80)
eeObj.WriteMem32(0x001aedec,0x44882000)
eeObj.WriteMem32(0x001aedf0,0x46002103)
eeObj.WriteMem32(0x001aedf4,0x461e26c3)
eeObj.WriteMem32(0x001aedf8,0x461b0842)
end

emuObj.AddVsyncHook(widescreen)