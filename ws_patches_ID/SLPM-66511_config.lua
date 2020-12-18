apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kowloon Youma Gakuenki Re-Charge (NTSC-J)(SLPM-66511)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Game play (dungeon)
--FA189C3F 760BBF3F 00000000 00000000
eeObj.WriteMem32(0x00A0CE00,0x3F6A2574)

--Render fix
--85EB513F 1F852B3F 74256A3F
eeObj.WriteMem32(0x00A0CDF8,0x3f8C0000)

--2D Characters Ratio
--00009B43 00000000 0000803F(*) 0000803F
eeObj.WriteMem32(0x007C8FAC,0x3F400000)
--0000803F
eeObj.WriteMem32(0x007C950C,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)