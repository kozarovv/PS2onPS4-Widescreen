apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- 16:9
eeObj.WriteMem32(0x004f4b38,0x3f400000)

-- black border fix
eeObj.WriteMem32(0x00322f2c,0x3c013f80)

--FMV's fix
eeObj.WriteMem32(0x00272210,0x24030256)
eeObj.WriteMem32(0x00272498,0x240B0256)
end

emuObj.AddVsyncHook(widescreen)