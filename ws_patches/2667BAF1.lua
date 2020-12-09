apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht (NTSC-K by Arapapa)

--Widescreen 16:9

--0000803f 00000000 00000000 0000803f 00000000 00000000 00000000 00000000 0000803f
eeObj.WriteMem32(0x0026e078,0x3faaaaab)
eeObj.WriteMem32(0x0026e084,0x3faaaaab)

--Render fix
--003f023c 00088244 00000000 020b1446
eeObj.WriteMem32(0x0017f870,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)