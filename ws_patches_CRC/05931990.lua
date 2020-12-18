apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Acem (pnach NTSC-K by Arapapa)

--16:9 (0000803f 5555153f)
eeObj.WriteMem32(0x01CAF990,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)