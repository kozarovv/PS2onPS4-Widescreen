apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Lord of the Rings - Nakatsu Kuni Daisanki (J)(SLPM-65846)
--comment=Widescreen Hack (NTSC-J by Arapapa)


--0000803F 5555953F 0000803F
eeObj.WriteMem32(0x00C40600,0x3f400000)

--0000803F B76D5B3F 0000803F
eeObj.WriteMem32(0x00C40610,0x3fb00000)

--0000803F B76D5B3F 0000803F
eeObj.WriteMem32(0x00C40618,0x3fb00000)
end

emuObj.AddVsyncHook(widescreen)