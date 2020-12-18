apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Formula One 2003 (E)(SCES-51592)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--8040013c 00008144 00000000 02080046 aa3e013c
eeObj.WriteMem32(0x0012f3e8,0x3c0140ab)

--Y-Fov
--883f013c 89882134 (1st)
eeObj.WriteMem32(0x0012f358,0x3c013fb6)
eeObj.WriteMem32(0x0012f35c,0x34210b5f)



--eeObj.WriteMem32(0x003d5594,0x40100000)
end

emuObj.AddVsyncHook(widescreen)