apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by synce (pnach by Arapapa)

--16:9
eeObj.WriteMem32(0x00450a30,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)