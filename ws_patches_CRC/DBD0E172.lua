apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Def Jam - Vendetta (J)(SLPS-25275)
--comment=Widescreen Hack (NTSC-K by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x001a36ec,0x3c013f10)
eeObj.WriteMem32(0x00199b3c,0x3c013f22)
end

emuObj.AddVsyncHook(widescreen)