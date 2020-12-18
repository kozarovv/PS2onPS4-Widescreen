apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kinnikuman Muscle Grand Prix Max 2: Tokumori [NTSC-J] (SLPS_258.81)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001C5DEC,0x3C014455)

--Big heads - Try it :)
--eeObj.WriteMem32(0x001F44D0,0x3C013F40)
end

emuObj.AddVsyncHook(widescreen)