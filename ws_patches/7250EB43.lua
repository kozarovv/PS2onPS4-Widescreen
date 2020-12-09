apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--240080ac 280080e4 0800e003
eeObj.WriteMem32(0x0039c33c,0x08030000)
eeObj.WriteMem32(0x0039c340,0x00000000)

eeObj.WriteMem32(0x000c0000,0xac800024)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x4600f002)
eeObj.WriteMem32(0x000c0010,0xe4800028)
eeObj.WriteMem32(0x000c0014,0x080e70d1)
end

emuObj.AddVsyncHook(widescreen)