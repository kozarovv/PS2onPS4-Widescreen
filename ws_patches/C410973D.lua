apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dragon Ball Z 2V (J)(SLPM-68513)
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x0012eb0c,0x3c013f40)
eeObj.WriteMem32(0x0012eb10,0x4481f000)
eeObj.WriteMem32(0x0012e9dc,0x461ead42)
end

emuObj.AddVsyncHook(widescreen)