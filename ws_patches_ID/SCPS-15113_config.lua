apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Minna no Tennis (J)(SCPS-15113)
--comment=Widescreen hack by ElHecht (NTSC-J by Arapapa)

-- 16:9
--440584e4 07210046
eeObj.WriteMem32(0x00139120,0x08070243)
eeObj.WriteMem32(0x00139124,0x00000000)

--007a3300 00000000 00000000
eeObj.WriteMem32(0x001c090c,0x3c013f40)
eeObj.WriteMem32(0x001c0910,0x4481f000)
eeObj.WriteMem32(0x001c0914,0x461e2103)
eeObj.WriteMem32(0x001c0918,0xe4840544)
eeObj.WriteMem32(0x001c091c,0x46002107)
eeObj.WriteMem32(0x001c0920,0x0804e449)

--2044033c f40000ae
eeObj.WriteMem32(0x00137984,0x3c034456)
end

emuObj.AddVsyncHook(widescreen)