apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Game play
--803f013c 00a08144 4c79040c
eeObj.WriteMem32(0x0011dfb4,0x3c013f40)

--Event
eeObj.WriteMem32(0x0011e1c0,0x3c013f40)

--? (Same pattern's Search Value. Test time is short. Then remain it)
eeObj.WriteMem32(0x0011e3b0,0x3c013f40)

--Render fix
--c043013c 00688144 c6a30046
eeObj.WriteMem32(0x0011e010,0x3c014400)
end

emuObj.AddVsyncHook(widescreen)