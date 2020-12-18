apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by synce (pnach by Arapapa)

--16:9 (0000803f d9eeee3e 00080000)
eeObj.WriteMem32(0x01E17B3C,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)